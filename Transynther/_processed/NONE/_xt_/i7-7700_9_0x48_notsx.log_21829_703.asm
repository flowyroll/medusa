.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xcf67, %rdx
nop
nop
sub $10773, %rcx
mov (%rdx), %esi
nop
nop
nop
nop
and $42159, %r11
lea addresses_normal_ht+0x2d67, %rcx
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
sub $63112, %rcx
lea addresses_normal_ht+0x137c7, %rsi
lea addresses_A_ht+0xc867, %rdi
nop
nop
nop
mfence
mov $116, %rcx
rep movsb
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1ab3f, %rsi
lea addresses_WT_ht+0x1ee67, %rdi
cmp %r15, %r15
mov $81, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x6a4b, %rsi
lea addresses_WT_ht+0xbb67, %rdi
nop
dec %rdx
mov $108, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x18fa7, %rsi
lea addresses_UC_ht+0xc8b8, %rdi
nop
add %r11, %r11
mov $53, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1c367, %rsi
lea addresses_WT_ht+0x1e367, %rdi
sub $9368, %r12
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
and $11349, %rcx
lea addresses_WC_ht+0xfc67, %rsi
lea addresses_A_ht+0x13b67, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $85, %rcx
rep movsb
nop
xor %r12, %r12
lea addresses_D_ht+0x13f41, %rsi
lea addresses_WT_ht+0x1dfe7, %rdi
nop
nop
nop
nop
nop
and $34154, %r8
mov $26, %rcx
rep movsl
add $6571, %r12
lea addresses_normal_ht+0x4c67, %r11
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
cmp $6957, %r11
lea addresses_WT_ht+0x10179, %rsi
lea addresses_UC_ht+0xeb67, %rdi
nop
nop
nop
xor %r8, %r8
mov $78, %rcx
rep movsl
nop
nop
xor $4271, %r8
lea addresses_A_ht+0xbf27, %r8
nop
cmp %rsi, %rsi
movb (%r8), %dl
nop
nop
add $41774, %rcx
lea addresses_A_ht+0x2195, %rcx
and $7775, %r15
mov (%rcx), %edx
cmp $60541, %r15
lea addresses_normal_ht+0x13dc3, %rsi
lea addresses_normal_ht+0x1cde7, %rdi
add %rdx, %rdx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x4028, %rsi
lea addresses_PSE+0xe95, %rdi
nop
and $23780, %rbp
mov $94, %rcx
rep movsl
nop
nop
nop
and $46318, %rdi

// Store
lea addresses_WT+0x16967, %rsi
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
xor %r8, %r8

// Store
lea addresses_RW+0xfce7, %rbx
nop
add $32333, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rbx)
nop
and %rbp, %rbp

// Store
lea addresses_A+0xe4e7, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rdi)
add %rbx, %rbx

// Load
lea addresses_normal+0xec67, %rbx
nop
nop
nop
nop
nop
xor $39207, %rdi
mov (%rbx), %ax
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_US+0x162df, %rdi
nop
nop
add $24702, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
add $35497, %rsi

// Store
lea addresses_US+0x1e247, %rsi
nop
nop
cmp $36954, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
nop
dec %rdi

// Faulty Load
lea addresses_RW+0x8b67, %rdi
clflush (%rdi)
nop
nop
dec %rax
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 7}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
