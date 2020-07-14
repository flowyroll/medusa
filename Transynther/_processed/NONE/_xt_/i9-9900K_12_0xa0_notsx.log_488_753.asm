.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc97e, %rsi
lea addresses_UC_ht+0x1e666, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $7, %rcx
rep movsl
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1e066, %rsi
lea addresses_A_ht+0x9bfe, %rdi
nop
nop
nop
nop
and $17701, %r14
mov $78, %rcx
rep movsw
nop
sub %r14, %r14
lea addresses_D_ht+0x10c66, %r15
nop
nop
nop
sub $14429, %r8
mov (%r15), %rbp
dec %r8
lea addresses_A_ht+0x466, %r15
nop
inc %r8
mov (%r15), %esi
nop
nop
nop
nop
nop
sub $38695, %rdi
lea addresses_WT_ht+0x1e240, %r15
nop
nop
xor %rsi, %rsi
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
and $12252, %r8
lea addresses_A_ht+0x12566, %rsi
lea addresses_UC_ht+0x6425, %rdi
nop
nop
sub $36780, %r14
mov $121, %rcx
rep movsw
nop
nop
nop
nop
cmp $17381, %r8
lea addresses_UC_ht+0x43f6, %r15
nop
nop
nop
nop
nop
dec %rcx
mov (%r15), %r14d
nop
nop
sub $55055, %r14
lea addresses_D_ht+0x12a66, %rsi
and $5202, %r8
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
and $4300, %r14
lea addresses_D_ht+0x466, %rsi
lea addresses_normal_ht+0x14966, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $107, %rcx
rep movsq
nop
nop
nop
nop
cmp $13750, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x15a66, %r15
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r15)
nop
nop
nop
nop
inc %rdx

// Load
lea addresses_WC+0x1b6e6, %rdi
clflush (%rdi)
sub %rbx, %rbx
vmovaps (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
and %rbx, %rbx

// Store
lea addresses_WC+0x1d4c2, %r15
nop
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r15)
cmp $29093, %rbx

// Faulty Load
lea addresses_WT+0x3466, %rdx
nop
nop
nop
cmp %rbx, %rbx
mov (%rdx), %bp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'39': 488}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
