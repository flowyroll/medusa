.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2fe5, %rdi
clflush (%rdi)
cmp $37100, %r10
movb $0x61, (%rdi)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x14ce5, %rax
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
add $23684, %r15
lea addresses_UC_ht+0x12ce5, %rsi
lea addresses_A_ht+0x4f69, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $57707, %r11
mov $97, %rcx
rep movsl
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x112e5, %r10
inc %rdi
movb (%r10), %bl
nop
nop
add $14922, %rdi
lea addresses_D_ht+0x1a9a9, %rsi
lea addresses_WC_ht+0x4f14, %rdi
dec %rax
mov $46, %rcx
rep movsb
nop
nop
nop
nop
nop
add $59426, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x1c66d, %r9
clflush (%r9)
cmp $36483, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_RW+0x33fd, %rcx
nop
nop
and $60047, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
inc %r9

// Store
mov $0x5b754400000006e5, %r14
and $49175, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%r14)
nop
nop
cmp $33320, %r14

// Store
mov $0x5b754400000006e5, %rcx
nop
nop
cmp $10377, %rsi
movb $0x51, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %rbx
nop
cmp %rbx, %rbx

// Load
mov $0x4d480b0000000d05, %rsi
nop
nop
sub $53581, %r9
movb (%rsi), %r14b
nop
nop
sub %rbx, %rbx

// Store
mov $0x5b754400000006e5, %r14
nop
nop
sub $11416, %r15
mov $0x5152535455565758, %r9
movq %r9, (%r14)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
mov $0x5b754400000006e5, %r12
nop
nop
and $50940, %r9
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'00': 200}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
