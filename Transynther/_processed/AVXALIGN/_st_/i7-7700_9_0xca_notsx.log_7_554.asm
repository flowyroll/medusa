.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rax
push %rbx
push %rdi
push %rsi
lea addresses_D_ht+0x6f5b, %r14
and %rax, %rax
movw $0x6162, (%r14)
and %rdi, %rdi
lea addresses_D_ht+0x10d1b, %rax
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
nop
add $22704, %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0xb60d, %r11
nop
xor %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movaps %xmm3, (%r11)
nop
nop
nop
nop
add $14265, %rdx

// Store
lea addresses_PSE+0x18cdb, %r14
nop
nop
cmp $21450, %r15
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
sub $17765, %r15

// Store
mov $0x64ea7200000007c3, %r10
nop
nop
add %r14, %r14
movl $0x51525354, (%r10)
cmp %rdx, %rdx

// Load
lea addresses_RW+0xc71b, %r11
clflush (%r11)
and %r10, %r10
movb (%r11), %bl
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0xcaaf, %r14
nop
nop
nop
nop
add $34060, %rbp
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and %r10, %r10

// Faulty Load
lea addresses_D+0x4f5b, %r10
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%r10), %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'36': 7}
36 36 36 36 36 36 36
*/
