.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7127, %r9
nop
and %rbp, %rbp
movb (%r9), %r14b
cmp $46628, %r15
lea addresses_WT_ht+0x13b49, %rsi
inc %r12
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x19899, %rsi
lea addresses_WC_ht+0x13389, %rdi
nop
nop
nop
nop
and $49653, %rbp
mov $111, %rcx
rep movsl
nop
nop
nop
and $37290, %r15
lea addresses_normal_ht+0x14b49, %rsi
lea addresses_UC_ht+0x168a9, %rdi
and %r15, %r15
mov $71, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x5ec9, %r8
nop
nop
sub $56565, %rcx
movb (%r8), %r12b
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x1dfc9, %rsi
lea addresses_WT_ht+0x1c749, %rdi
nop
cmp %r12, %r12
mov $123, %rcx
rep movsl
nop
nop
nop
nop
xor $13160, %rbp
lea addresses_A_ht+0xf799, %r14
clflush (%r14)
nop
nop
xor %rbp, %rbp
mov (%r14), %r12
nop
nop
dec %rcx
lea addresses_WT_ht+0x5ecb, %r15
clflush (%r15)
nop
mfence
mov (%r15), %r9d
nop
nop
nop
nop
add $61885, %rdi
lea addresses_A_ht+0x11449, %rsi
lea addresses_WC_ht+0xc695, %rdi
nop
nop
nop
inc %r8
mov $75, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x16f99, %r9
nop
add $2286, %rdi
mov (%r9), %rbp
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1a919, %rbp
nop
nop
nop
nop
nop
sub $5600, %r12
vmovups (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_RW+0x8349, %r14
nop
xor $57980, %r11
mov (%r14), %edx
nop
nop
nop
nop
nop
and $223, %r14

// Store
mov $0x4d0cd10000000933, %rbx
nop
nop
nop
nop
sub $64838, %r8
movl $0x51525354, (%rbx)
nop
nop
xor $53393, %rdi

// Store
lea addresses_D+0x25f9, %r8
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r8)
nop
xor $2940, %r11

// Store
lea addresses_WC+0x1b49, %rdx
sub $27868, %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_WC+0x1b389, %r8
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
inc %rbx

// Store
mov $0x883, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x51, (%rdx)
nop
dec %rbp

// Store
lea addresses_normal+0x1849, %r11
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movaps %xmm2, (%r11)
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_WT+0x7b49, %r11
nop
nop
nop
xor $33751, %r14
mov (%r11), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'54': 580}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
