.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b409, %r15
nop
and %r8, %r8
movb (%r15), %al
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x139e9, %rsi
lea addresses_normal_ht+0x3d49, %rdi
nop
nop
and %rax, %rax
mov $94, %rcx
rep movsl
and $63976, %r8
lea addresses_A_ht+0xec09, %rsi
lea addresses_WT_ht+0x6409, %rdi
nop
nop
nop
and %r14, %r14
mov $80, %rcx
rep movsw
nop
nop
add $5393, %rcx
lea addresses_UC_ht+0x16609, %r14
nop
nop
nop
nop
nop
sub %rax, %rax
movb $0x61, (%r14)
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x8a96, %rax
nop
nop
xor %r8, %r8
movb $0x61, (%rax)
and %rax, %rax
lea addresses_D_ht+0x7209, %rsi
lea addresses_normal_ht+0x18a09, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r14, %r14
mov $112, %rcx
rep movsq
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x117e7, %rsi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov (%rsi), %r11
cmp $3277, %rax
lea addresses_WC_ht+0x17021, %r14
nop
cmp $1732, %rax
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
add $46720, %rdi
lea addresses_A_ht+0x12c89, %rsi
lea addresses_UC_ht+0xe161, %rdi
nop
nop
nop
add $64718, %r15
mov $10, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x4e09, %rdi
nop
nop
nop
nop
mfence
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xcb09, %r14
nop
and %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x60b9, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x13fab, %rcx
nop
cmp $22540, %rdi
movb (%rcx), %r15b
cmp $51990, %r15
lea addresses_normal_ht+0xb609, %rsi
lea addresses_A_ht+0x4c89, %rdi
clflush (%rdi)
nop
nop
xor $40893, %r8
mov $14, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x14809, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rcx), %r8
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdx

// Load
lea addresses_US+0x2809, %r15
nop
add $61243, %r11
mov (%r15), %r14
nop
nop
and $54767, %r11

// Store
lea addresses_UC+0xf71, %r13
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r13)
nop
nop
sub %rbx, %rbx

// Load
mov $0x7a775a0000000609, %rdx
nop
nop
nop
nop
cmp %r13, %r13
mov (%rdx), %rbx
nop
nop
nop
inc %r13

// Store
lea addresses_A+0xfe09, %rdx
nop
nop
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%rdx)
nop
and $57603, %r11

// Store
lea addresses_WC+0xe09, %r14
nop
nop
sub %r15, %r15
movw $0x5152, (%r14)
cmp $13973, %rbx

// Store
lea addresses_UC+0xc329, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_US+0x2809, %rbx
nop
sub $16159, %r13
mov (%rbx), %r11w
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
