.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6445, %r15
nop
nop
cmp %rbx, %rbx
movups (%r15), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0xa325, %rcx
nop
nop
sub $48136, %rax
mov (%rcx), %r9
nop
nop
add $57523, %rax
lea addresses_UC_ht+0x13109, %rcx
nop
add $5577, %rdx
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r15
nop
add %rax, %rax
lea addresses_UC_ht+0x1aa9d, %rsi
lea addresses_D_ht+0x1e53d, %rdi
nop
nop
sub %r15, %r15
mov $67, %rcx
rep movsb
nop
lfence
lea addresses_normal_ht+0xc43d, %rax
and $64558, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x11e1d, %rsi
lea addresses_UC_ht+0xd09d, %rdi
nop
nop
nop
nop
and $35484, %rdx
mov $82, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x3303, %rsi
lea addresses_UC_ht+0x5ffd, %rdi
nop
nop
and $38188, %rax
mov $99, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x1190d, %rcx
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
xor $50447, %r15
lea addresses_normal_ht+0x917d, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor $7452, %rcx
movw $0x6162, (%r9)
nop
nop
dec %rcx
lea addresses_D_ht+0x14e8d, %rsi
add %rax, %rax
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
nop
sub $13633, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x821d, %r11
clflush (%r11)
nop
nop
nop
nop
and $62943, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0xaa1d, %r14
clflush (%r14)
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r14)
add %r14, %r14

// Load
mov $0x599, %rax
dec %r12
mov (%rax), %cx
cmp $45872, %rdi

// Store
lea addresses_PSE+0x6a7d, %rax
nop
nop
inc %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
and $52205, %rcx

// Store
lea addresses_WC+0x51bd, %r14
nop
sub %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r14)
sub %rdi, %rdi

// Store
lea addresses_UC+0xb19d, %r14
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r14)
nop
nop
dec %rdx

// Store
lea addresses_RW+0x6a48, %rdi
nop
nop
nop
nop
add $54641, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
nop
xor $64367, %rcx

// Faulty Load
lea addresses_A+0x1621d, %rax
nop
nop
nop
add $53005, %r11
vmovaps (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
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
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'00': 1}
00
*/
