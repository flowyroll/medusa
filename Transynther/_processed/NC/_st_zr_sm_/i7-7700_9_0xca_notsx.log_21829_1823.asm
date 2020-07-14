.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
lea addresses_D_ht+0x19ec6, %rax
nop
nop
inc %r8
mov (%rax), %r11
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x4ce2, %rcx
nop
nop
xor %r15, %r15
mov (%rcx), %r9w
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x174e2, %r11
clflush (%r11)
nop
nop
xor %r15, %r15
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x174e2, %r11
nop
nop
add %rax, %rax
mov (%r11), %ecx
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x198e2, %r15
clflush (%r15)
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r15)
nop
nop
add $50235, %r11
lea addresses_D_ht+0x1c0e2, %rax
clflush (%rax)
nop
cmp $45294, %rbx
movb $0x61, (%rax)
nop
nop
nop
nop
sub $31416, %rax
lea addresses_WT_ht+0x18f12, %rax
nop
sub %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, (%rax)
xor %rax, %rax
lea addresses_A_ht+0x1d23b, %rbx
nop
nop
inc %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add $1319, %r11
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1e862, %rdx
clflush (%rdx)
nop
nop
xor %rsi, %rsi
mov (%rdx), %rbx
nop
nop
nop
nop
nop
cmp %r15, %r15

// Load
mov $0xca2, %rsi
clflush (%rsi)
nop
nop
nop
dec %r14
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
xor $55208, %rdi

// Store
lea addresses_US+0x117e2, %rdx
nop
nop
nop
nop
nop
cmp $48962, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
xor %r15, %r15

// Load
mov $0x22c4b50000000ce2, %r15
nop
nop
inc %rdx
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
nop
inc %rsi

// Store
mov $0x24, %rsi
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rsi)
nop
nop
add $4137, %rdi

// Store
mov $0x326f550000000ce2, %rsi
nop
xor $25593, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
nop
cmp $43014, %rbx

// Faulty Load
mov $0x326f550000000ce2, %r15
nop
nop
nop
nop
inc %rdx
mov (%r15), %bx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 10004, '58': 11825}
58 00 58 00 58 00 00 00 58 58 00 00 00 58 00 58 58 00 58 00 00 58 58 00 58 00 58 00 58 00 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 00 00 00 58 58 58 58 00 58 00 00 00 00 00 58 58 00 58 58 00 58 58 58 00 58 00 58 00 00 58 00 00 00 58 58 00 58 00 58 00 00 00 00 58 00 58 00 00 00 00 00 00 58 00 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 00 00 58 00 00 58 00 00 00 58 58 58 58 00 58 58 58 00 00 58 58 58 00 00 00 00 58 58 58 58 58 00 58 00 00 58 58 58 00 00 58 58 00 00 00 58 58 00 00 58 58 00 58 58 00 00 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 00 58 00 00 00 58 00 58 00 00 58 00 00 00 58 00 58 58 00 00 58 58 58 00 00 58 58 00 00 58 00 00 58 58 58 00 58 00 00 00 58 58 58 00 58 00 58 58 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 00 00 58 58 58 00 58 00 00 58 58 00 00 58 58 00 58 58 00 58 00 58 00 00 58 58 00 58 00 58 58 58 00 00 00 00 58 58 58 58 58 00 58 58 00 00 58 58 00 58 58 00 58 00 58 58 00 58 58 58 00 58 00 00 58 00 58 58 00 58 00 58 00 58 00 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 58 58 00 00 00 58 58 00 58 00 00 00 58 58 00 58 58 00 58 00 58 58 00 58 00 58 00 00 00 58 00 58 00 58 00 58 00 58 00 58 58 58 58 58 00 00 58 00 00 00 00 58 58 00 58 58 58 00 58 58 58 58 00 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 00 58 58 00 00 58 00 58 00 00 00 00 00 00 58 00 58 58 58 00 58 00 00 00 00 00 58 58 00 58 58 00 00 58 58 58 00 58 58 58 58 00 58 00 58 58 00 00 00 58 58 00 58 00 00 58 58 58 58 00 00 58 00 58 58 58 00 58 00 58 00 00 00 00 00 00 58 00 58 58 00 58 58 58 00 58 00 00 58 00 58 58 00 00 58 00 00 00 00 58 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 00 58 00 00 00 58 00 58 58 58 58 00 58 00 00 00 58 58 58 00 58 58 58 58 00 00 00 58 00 00 58 00 58 58 58 58 00 58 58 00 58 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 58 00 58 00 00 58 00 00 58 58 58 00 58 58 58 00 58 00 58 00 58 00 00 00 58 00 00 58 00 58 58 00 00 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 00 00 00 58 00 58 00 00 58 00 00 00 58 00 00 58 00 58 58 58 58 58 00 58 58 00 58 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 00 58 00 00 00 58 58 00 00 00 58 00 58 58 58 00 58 00 58 00 58 58 58 00 58 00 00 00 58 58 58 00 58 00 58 00 58 58 00 00 58 00 00 00 58 00 58 00 58 00 58 58 58 00 58 00 00 58 00 00 58 00 00 58 58 58 00 00 58 58 58 58 58 00 00 00 00 00 00 58 00 00 58 00 58 58 58 00 58 58 58 58 00 00 58 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 00 58 00 00 58 00 58 58 58 58 58 00 00 00 58 58 58 58 58 00 00 00 58 58 00 58 00 58 58 00 58 00 00 58 58 58 58 58 58 00 58 00 00 58 00 00 58 58 00 00 58 00 58 58 58 58 58 00 58 00 00 00 00 00 00 00 58 58 00 00 58 58 58 58 58 00 58 00 58 00 00 00 58 58 00 00 00 58 58 58 00 00 58 58 58 00 00 58 00 58 58 58 00 00 58 58 00 00 58 00 58 00 00 00 00 00 58 00 00 00 00 00 58 58 58 00 00 58 00 00 00 58 00 58 00 00 00 00
*/
