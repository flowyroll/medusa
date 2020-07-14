.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11a83, %r13
nop
dec %rcx
movl $0x61626364, (%r13)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xcd03, %rbp
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x11603, %rdx
sub $2398, %rbp
mov (%rdx), %r13w
nop
nop
cmp $34051, %rcx
lea addresses_A_ht+0xc107, %rsi
lea addresses_A_ht+0x81d3, %rdi
nop
nop
add $56250, %r13
mov $71, %rcx
rep movsl
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x4803, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0xbe03, %r13
nop
nop
nop
nop
xor $53094, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
and $55768, %rcx
lea addresses_D_ht+0x12b97, %rax
nop
nop
nop
xor %rsi, %rsi
movb (%rax), %r13b
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x323d, %rsi
lea addresses_WC_ht+0xeb4b, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $83, %rcx
rep movsq
nop
nop
xor $43371, %r13
lea addresses_WC_ht+0x12603, %rsi
lea addresses_A_ht+0xa55, %rdi
clflush (%rsi)
nop
cmp $5605, %r13
mov $32, %rcx
rep movsb
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x1d003, %rsi
lea addresses_A_ht+0x7e03, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $106, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rbx

// Store
mov $0xcd3, %r9
add %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_D+0x1c603, %r9
nop
nop
xor %r10, %r10
movb $0x51, (%r9)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x13603, %r10
nop
nop
nop
nop
sub $7948, %r11
movups (%r10), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'6c': 1, '00': 16475, '45': 5333, '48': 20}
00 6c 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 45 45 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 45 00 00 00 00 00 45 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 45 45 45 00 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 00 45 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 45 45 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 45 00 00 45 45 00 00 45 45 45 45 45 00 45 45 00 00 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 45 00 45 00 00 45 45 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 45 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 45 00 00 45 00 00 45 45 00 45 45 00 00 45 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 45 00 00 45 00 45 00 00 00 45 00 45 45 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 45 45 45 00 00 00 00 45 45 00 00 00 45 00 45 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 45 00 45 00 00 00 00 45 00 45 00 00 00 00 00 45 00 45 00 45 00 00 45 00 45 45 00 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00
*/
