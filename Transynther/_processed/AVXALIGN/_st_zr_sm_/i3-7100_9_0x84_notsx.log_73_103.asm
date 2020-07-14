.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
lea addresses_UC_ht+0x4201, %rax
nop
inc %r11
mov (%rax), %r15
nop
nop
inc %r14
lea addresses_D_ht+0x3b01, %rcx
nop
inc %r14
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r13
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x9559, %r14
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
sub $59003, %r14
lea addresses_WC_ht+0x9f39, %r11
nop
nop
nop
nop
xor $22091, %rbx
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
sub %rbx, %rbx
lea addresses_WT_ht+0x3b01, %r15
nop
nop
nop
xor %r14, %r14
movb $0x61, (%r15)
nop
nop
sub %rbx, %rbx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_PSE+0x909, %rsi
nop
inc %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
dec %r13

// Store
mov $0x497e800000000301, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_D+0x1581, %r8
nop
nop
xor %r10, %r10
mov (%r8), %rcx

// Exception!!!
nop
mov (0), %r13
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0x1b741, %rcx
nop
nop
nop
nop
nop
xor $48724, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rcx)
and $35773, %rcx

// Store
mov $0x497e800000000301, %r14
nop
nop
nop
and $10477, %r13
movw $0x5152, (%r14)
nop
inc %rsi

// Faulty Load
mov $0x497e800000000301, %rsi
dec %rbp
mov (%rsi), %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 4, '52': 69}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52
*/
