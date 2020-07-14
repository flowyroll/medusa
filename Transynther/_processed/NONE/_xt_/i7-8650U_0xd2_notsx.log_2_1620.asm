.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xc2b2, %r10
cmp $1873, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %r10
movntdq %xmm5, (%r10)
cmp %r15, %r15
lea addresses_D_ht+0xa99e, %rdx
inc %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1a632, %r10
and $50221, %r9
mov (%r10), %r14d
nop
xor %r9, %r9
lea addresses_D_ht+0xa9b2, %r11
clflush (%r11)
nop
nop
cmp %r10, %r10
movb (%r11), %r9b
nop
nop
nop
cmp $14233, %rdx
lea addresses_D_ht+0x1d9b2, %r14
nop
nop
nop
nop
nop
xor $30272, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r14)
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x7042, %r14
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r14)
nop
add %r15, %r15
lea addresses_normal_ht+0x18d3a, %r14
nop
nop
nop
xor $36021, %rbp
movw $0x6162, (%r14)
add $63137, %r10
lea addresses_UC_ht+0x1e1f5, %r9
xor %rdx, %rdx
movb (%r9), %r14b
mfence
lea addresses_D_ht+0x35b2, %r11
nop
nop
nop
cmp $19425, %r14
mov (%r11), %rbp
xor %r14, %r14
lea addresses_D_ht+0x17dad, %r15
xor $31859, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r15)
nop
xor $7337, %r15
lea addresses_A_ht+0x159b2, %r14
nop
nop
nop
dec %r11
mov (%r14), %rbp
nop
nop
nop
nop
nop
and $21861, %rdx
lea addresses_WT_ht+0x53e2, %rsi
lea addresses_D_ht+0x1a7b2, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $104, %rcx
rep movsb
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x134b2, %rsi
lea addresses_A_ht+0x1ddb2, %rdi
nop
nop
xor %r10, %r10
mov $121, %rcx
rep movsl
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x116b2, %rsi
lea addresses_UC_ht+0x19f32, %rdi
nop
nop
nop
inc %r10
mov $85, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $6713, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0xfdb2, %rax
nop
nop
nop
nop
cmp $17486, %rsi
movl $0x51525354, (%rax)
nop
dec %rbx

// Load
mov $0x47f2520000000352, %r9
cmp $8576, %rcx
mov (%r9), %r10w
cmp $41063, %rsi

// Store
lea addresses_normal+0x1cd4a, %r9
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
xor $48556, %r10

// Faulty Load
lea addresses_RW+0x55b2, %rcx
nop
nop
nop
xor %rbx, %rbx
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'32': 2}
32 32
*/
