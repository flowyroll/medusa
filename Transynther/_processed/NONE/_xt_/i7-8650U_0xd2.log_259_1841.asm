.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xd301, %rsi
lea addresses_A_ht+0x1699d, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $30, %rcx
rep movsl
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x18881, %rsi
lea addresses_normal_ht+0x11681, %rdi
nop
inc %r15
mov $52, %rcx
rep movsw
dec %r15
lea addresses_D_ht+0xe581, %rax
nop
nop
nop
nop
nop
sub $59997, %rcx
mov (%rax), %r12w
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x2881, %rsi
nop
nop
nop
sub $1833, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %rsi
movntdq %xmm6, (%rsi)
dec %rdi
lea addresses_WT_ht+0x8a01, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbx), %rax
nop
nop
dec %rbx
lea addresses_D_ht+0x1eaf9, %r15
nop
nop
nop
nop
nop
add $4365, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r15)
xor $20159, %rsi
lea addresses_D_ht+0x18081, %rsi
lea addresses_WC_ht+0x14c81, %rdi
nop
nop
nop
dec %r9
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
add $53737, %rsi
lea addresses_WC_ht+0x1b481, %rsi
nop
nop
xor %rcx, %rcx
movb (%rsi), %al
nop
nop
nop
nop
sub $60793, %r15
lea addresses_WT_ht+0x9c81, %rbx
nop
nop
nop
dec %rsi
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
sub $34085, %rax
lea addresses_D_ht+0x8f81, %rsi
lea addresses_normal_ht+0x11461, %rdi
nop
sub %rax, %rax
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $53759, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rdx

// Store
lea addresses_WC+0x14199, %rdx
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%rdx)
and $22828, %rbp

// Store
lea addresses_PSE+0x14641, %r15
clflush (%r15)
cmp %r11, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
sub $23430, %rdx

// Store
lea addresses_US+0x8c81, %rdx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
and $14300, %r10

// Store
lea addresses_WT+0x13081, %rax
nop
nop
nop
add $10139, %r14
mov $0x5152535455565758, %r15
movq %r15, (%rax)
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_RW+0x14881, %r15
nop
nop
nop
nop
sub %r11, %r11
mov (%r15), %edx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'32': 259}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
