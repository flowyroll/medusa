.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x47eb, %r14
clflush (%r14)
nop
nop
nop
nop
xor $8461, %rbp
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
dec %r11
lea addresses_WT_ht+0x103cb, %rsi
lea addresses_A_ht+0x6c9, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $68, %rcx
rep movsw
nop
nop
nop
sub $61355, %rcx
lea addresses_UC_ht+0xf71b, %rsi
lea addresses_WT_ht+0x19ceb, %rdi
and $23629, %r8
mov $88, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $53725, %rdi
lea addresses_UC_ht+0x1bb29, %r14
nop
nop
and %rdi, %rdi
mov (%r14), %r11d
nop
and $46676, %r14
lea addresses_UC_ht+0x1e44b, %rsi
lea addresses_UC_ht+0x24eb, %rdi
clflush (%rdi)
nop
sub %rbp, %rbp
mov $112, %rcx
rep movsw
nop
and $41046, %r14
lea addresses_A_ht+0xe2ab, %rbp
nop
nop
cmp $6563, %r14
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x120eb, %r14
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r14)
nop
and %rsi, %rsi
lea addresses_A_ht+0x7541, %rdi
nop
nop
nop
nop
add %r11, %r11
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r14
and %r9, %r9
lea addresses_WT_ht+0x184eb, %rsi
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0xf96b, %r14
clflush (%r14)
nop
nop
cmp %r11, %r11
mov (%r14), %edi
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1b2eb, %rbp
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rbp
movaps %xmm5, (%rbp)
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0xa52b, %r11
nop
nop
nop
nop
nop
add $25058, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1a4eb, %rsi
lea addresses_PSE+0x1f1f, %rdi
dec %r12
mov $61, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x1189f, %r14
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
cmp $4167, %r11

// Store
lea addresses_UC+0xe4eb, %r11
clflush (%r11)
nop
nop
and %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
cmp $15825, %rcx

// Faulty Load
mov $0xd287300000004eb, %rsi
nop
nop
nop
nop
nop
cmp $18751, %rcx
movb (%rsi), %r14b
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 8812, '10': 3148, '51': 722}
00 10 00 00 10 10 00 00 00 00 10 10 00 00 00 00 10 00 10 10 00 00 00 10 00 10 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00 00 10 00 00 00 00 00 10 00 10 10 00 00 51 00 10 00 00 10 00 00 00 00 00 00 00 51 00 00 00 10 00 10 00 00 00 10 00 51 10 10 00 00 00 00 00 00 10 00 00 00 00 00 00 10 51 00 00 51 00 00 00 00 00 10 10 00 00 51 10 10 10 00 00 10 00 00 00 10 00 00 00 51 00 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00 00 10 10 00 00 00 10 10 00 00 00 51 10 00 00 00 00 00 00 10 00 00 00 00 10 00 00 00 00 00 00 00 00 00 10 00 00 00 00 10 00 10 00 00 00 00 00 00 10 00 10 10 00 51 00 00 00 00 00 51 00 00 10 00 10 10 10 00 00 00 00 00 00 00 10 10 10 10 00 00 00 00 00 00 00 00 00 00 00 10 10 00 00 00 00 00 00 00 51 00 00 51 10 00 00 10 00 00 00 10 10 10 00 00 51 00 00 00 10 10 10 00 00 00 00 00 00 00 10 00 10 00 00 00 10 10 10 00 00 00 10 51 00 10 00 00 00 10 00 00 00 10 00 00 00 00 10 00 00 00 00 00 10 00 00 10 00 00 10 00 00 00 10 10 00 00 51 10 10 00 00 00 00 00 10 00 00 10 00 00 10 10 00 00 00 00 10 00 00 00 10 00 10 00 00 00 00 00 00 00 10 00 00 00 00 00 10 00 10 00 10 00 10 51 10 10 00 00 00 10 00 10 00 00 10 00 00 00 51 00 00 00 51 10 51 10 00 00 00 00 00 00 00 00 00 10 00 00 00 10 00 10 10 00 00 10 00 00 00 00 10 10 00 51 00 00 00 00 00 10 00 10 10 00 10 00 00 10 00 10 00 00 00 00 00 00 00 10 00 00 00 00 51 00 10 00 00 00 00 00 00 00 00 00 00 00 10 10 00 00 00 00 00 00 10 00 00 00 51 10 00 10 10 00 51 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 51 10 00 00 10 00 10 00 00 00 10 00 00 00 00 00 00 00 00 00 00 10 10 10 00 10 51 10 00 00 00 00 00 00 00 00 00 00 00 00 10 10 10 10 00 00 10 00 00 10 00 10 10 10 51 00 00 00 00 51 00 10 00 10 10 00 10 00 00 00 00 00 00 00 51 00 00 10 00 00 00 00 00 10 10 00 00 00 51 00 00 00 00 00 10 00 00 10 10 00 00 00 00 10 10 00 00 10 00 10 00 10 00 00 00 10 00 00 00 10 10 00 00 00 00 00 00 00 00 10 10 00 00 00 51 00 00 00 10 00 00 00 10 00 00 00 00 00 10 00 00 00 10 10 00 00 00 00 00 00 00 00 51 10 00 10 00 51 00 00 10 51 00 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 10 51 10 00 00 10 00 00 00 00 00 00 00 10 00 00 00 10 00 00 51 00 00 00 10 00 10 00 00 00 10 00 10 10 00 00 10 51 00 00 00 00 00 00 00 00 00 10 00 00 10 00 10 10 00 10 00 10 00 10 10 00 00 00 00 00 00 00 10 00 00 00 00 10 00 00 00 10 00 00 51 00 10 10 00 10 00 10 00 00 00 00 00 00 00 00 00 00 00 00 00 10 10 00 10 00 10 00 00 00 00 10 00 10 00 51 51 00 00 10 00 00 00 10 00 00 00 10 00 10 00 00 10 51 00 00 00 51 00 10 00 10 00 10 00 00 00 00 10 00 00 10 00 10 00 00 00 00 51 10 00 00 00 00 00 00 51 10 00 10 00 00 00 00 10 00 00 00 10 10 00 00 10 00 00 00 10 00 10 00 10 00 00 00 00 00 00 00 00 10 00 00 00 00 00 10 00 00 00 00 00 00 00 00 00 51 10 51 00 10 10 00 10 00 00 10 00 00 00 00 10 00 00 00 00 00 00 00 00 00 00 51 51 00 10 00 00 00 00 10 00 00 00 00 00 00 10 00 10 00 10 00 00 10 00 10 00 00 00 00 10 51 00 00 00 00 00 00 00 10 00 10 00 10 00 00 00 00 00 00 10 00 51 51 10 10 51 10 10 00 00 51 00 00 00 00
*/
