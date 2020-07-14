.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x40fa, %rsi
lea addresses_D_ht+0xb181, %rdi
clflush (%rsi)
nop
nop
nop
and %rdx, %rdx
mov $88, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_WT_ht+0x14cf2, %r14
and $58444, %r15
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x8b9c, %rdi
nop
nop
nop
add $22521, %r15
movb (%rdi), %cl
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xd176, %rsi
lea addresses_normal_ht+0x141e2, %rdi
nop
cmp %r9, %r9
mov $70, %rcx
rep movsw
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x4912, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x312, %rsi
nop
nop
nop
sub $30220, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
cmp $27162, %r12

// Store
lea addresses_D+0x6e92, %r10
clflush (%r10)
and %r8, %r8
movw $0x5152, (%r10)
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0xe5ea, %rcx
add $39445, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movntdq %xmm5, (%rcx)
nop
and %r8, %r8

// Store
lea addresses_D+0x9112, %rcx
nop
nop
nop
nop
xor $19582, %rbx
movw $0x5152, (%rcx)
nop
and $9954, %r12

// Load
mov $0x7170b0000000112, %rbx
nop
nop
nop
nop
dec %r10
mov (%rbx), %cx
nop
add %rax, %rax

// Store
mov $0x304a4000000005d2, %rsi
nop
nop
nop
and $18641, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
cmp $40795, %rcx

// Store
mov $0x2e9f320000000912, %r8
clflush (%r8)
nop
cmp %rcx, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
nop
inc %r10

// Store
mov $0x1c39d20000000112, %r10
nop
nop
nop
nop
cmp $24472, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
mov $0x1c39d20000000112, %r12
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r12), %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 4052, '58': 17776, '52': 1}
58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 00 00 00 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 00 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 00 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 00 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58
*/
