.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1835e, %rsi
lea addresses_UC_ht+0x8ec9, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $34, %rcx
rep movsb
nop
nop
sub $24520, %r9
lea addresses_UC_ht+0x4fc9, %rsi
lea addresses_D_ht+0x43c9, %rdi
clflush (%rsi)
nop
and $39761, %rbx
mov $27, %rcx
rep movsw
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x78c9, %rcx
add %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rcx)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b3c9, %rsi
lea addresses_A_ht+0xd8c0, %rdi
nop
nop
nop
nop
dec %r12
mov $59, %rcx
rep movsw
and $4274, %r11
lea addresses_D_ht+0x14089, %r11
nop
nop
nop
nop
cmp $36093, %r12
mov (%r11), %r13w
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xe3c9, %rsi
lea addresses_A_ht+0x29c9, %rdi
dec %r13
mov $10, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x33c9, %rsi
lea addresses_WC_ht+0x9f89, %rdi
clflush (%rsi)
nop
nop
nop
cmp $53965, %r9
mov $84, %rcx
rep movsw
nop
cmp $28832, %r9
lea addresses_normal_ht+0x93c9, %rsi
nop
nop
nop
nop
nop
inc %rbx
movb $0x61, (%rsi)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x15e5, %rsi
lea addresses_UC_ht+0x1ddc9, %rdi
nop
xor $19945, %rbx
mov $65, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x10bc9, %rcx
nop
nop
sub $23364, %rsi
movb (%rcx), %r11b
nop
nop
and $6802, %r9
lea addresses_A_ht+0x16bc9, %rsi
lea addresses_WT_ht+0x29c9, %rdi
nop
nop
nop
nop
dec %r9
mov $37, %rcx
rep movsb
nop
dec %r12
lea addresses_UC_ht+0x819, %r9
nop
xor %rsi, %rsi
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
cmp $49047, %rcx
lea addresses_D_ht+0x1cfc9, %rsi
lea addresses_A_ht+0x79c9, %rdi
nop
dec %r11
mov $29, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_normal_ht+0x1bdc9, %rcx
nop
nop
nop
nop
nop
cmp $19430, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
xor %rsi, %rsi
lea addresses_WT_ht+0x3394, %rsi
lea addresses_UC_ht+0x1bb29, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp

// Store
lea addresses_WT+0x13bc9, %rbp
sub %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbp)
nop
cmp $49340, %rbp

// Faulty Load
lea addresses_UC+0xebc9, %r14
nop
nop
nop
nop
nop
xor $27009, %r9
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'37': 513}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
