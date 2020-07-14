.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x66a4, %r8
add $65260, %rax
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x11234, %r10
nop
nop
nop
sub $59369, %r12
movl $0x61626364, (%r10)
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0xf474, %r8
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x66f4, %r14
nop
nop
nop
add $53131, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r14)
nop
sub %r14, %r14
lea addresses_D_ht+0x166f4, %rbx
nop
nop
cmp %r9, %r9
mov (%rbx), %r12d
nop
inc %r14
lea addresses_WT_ht+0x3374, %rsi
lea addresses_D_ht+0x5ca4, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $70, %rcx
rep movsq
nop
nop
nop
nop
add $33090, %r8
lea addresses_WT_ht+0xce74, %rax
nop
sub %rsi, %rsi
mov (%rax), %r9
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x4554, %rsi
nop
sub %r9, %r9
movw $0x6162, (%rsi)
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x10f54, %r8
nop
dec %r12
mov (%r8), %rax
cmp $46368, %rcx
lea addresses_normal_ht+0x22f4, %rdi
nop
xor $36096, %rax
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
sub $51160, %r8
lea addresses_WT_ht+0x196f4, %r14
nop
nop
add %r9, %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp $62206, %r8
lea addresses_UC_ht+0x102f4, %rsi
lea addresses_normal_ht+0x189b4, %rdi
dec %r12
mov $100, %rcx
rep movsl
inc %r8
lea addresses_UC_ht+0xba, %rsi
lea addresses_D_ht+0x14b74, %rdi
nop
nop
nop
nop
nop
sub $22244, %r8
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x10f08, %r14
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%r14)
nop
nop
sub $35663, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1fd68, %rsi
lea addresses_A+0x4074, %rdi
nop
add %r11, %r11
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
and $27526, %rcx

// Load
mov $0x3bc, %rcx
lfence
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %r11
nop
and $64894, %r10

// Faulty Load
lea addresses_WT+0x176f4, %rdi
nop
nop
and $20373, %rcx
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
