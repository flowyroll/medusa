.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16d29, %rsi
lea addresses_D_ht+0x8529, %rdi
clflush (%rsi)
clflush (%rdi)
nop
sub $17566, %r11
mov $70, %rcx
rep movsb
sub $21725, %r11
lea addresses_WT_ht+0x16b29, %rsi
lea addresses_WT_ht+0x17a29, %rdi
nop
nop
nop
sub $31132, %r10
mov $119, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x3049, %rbp
clflush (%rbp)
nop
nop
cmp $822, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
mov $0xf03, %r14
nop
nop
and %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movntdq %xmm0, (%r14)
nop
nop
xor $49649, %r12

// Store
lea addresses_A+0x1bf29, %r12
nop
and %rbx, %rbx
movw $0x5152, (%r12)
nop
inc %r8

// Store
lea addresses_UC+0x18529, %rbx
xor %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
sub $3813, %r8

// Load
lea addresses_PSE+0x8421, %r14
nop
nop
nop
add %r12, %r12
mov (%r14), %r8d
nop
nop
nop
nop
nop
and $47966, %rax

// Store
lea addresses_RW+0xf165, %r14
nop
nop
nop
nop
nop
xor $60408, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r14)
nop
xor %r12, %r12

// Store
lea addresses_A+0xeb29, %r14
nop
nop
nop
nop
and $40262, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_RW+0xfd29, %r8
nop
and %r12, %r12
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'32': 2}
32 32
*/
