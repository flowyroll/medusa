.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5d20, %rbx
dec %r11
movw $0x6162, (%rbx)
nop
nop
nop
sub $5164, %rax
lea addresses_normal_ht+0x1c20, %rsi
lea addresses_normal_ht+0x7ddf, %rdi
nop
nop
nop
and %r13, %r13
mov $58, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_D_ht+0xe420, %rsi
nop
nop
nop
nop
nop
cmp $61321, %r11
movw $0x6162, (%rsi)
nop
nop
nop
add $1199, %rcx
lea addresses_normal_ht+0x10ba0, %rsi
lea addresses_normal_ht+0x85ca, %rdi
clflush (%rsi)
cmp %r13, %r13
mov $78, %rcx
rep movsw
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x8620, %rsi
lea addresses_WT_ht+0x7640, %rdi
nop
and $55969, %r12
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $36609, %r11
lea addresses_normal_ht+0x9020, %rax
nop
cmp $28487, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
sub $36661, %r13
lea addresses_D_ht+0x15420, %r11
nop
nop
nop
nop
nop
sub $47917, %r13
mov (%r11), %rsi
cmp %rcx, %rcx
lea addresses_WT_ht+0x4cba, %rsi
lea addresses_A_ht+0x13b78, %rdi
nop
and %r13, %r13
mov $16, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0xb528, %rcx
nop
nop
nop
nop
nop
dec %rbx
mov (%rcx), %rdi
nop
nop
sub $7498, %rcx
lea addresses_WC_ht+0x420, %rcx
nop
nop
sub $10391, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
and $18060, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_normal+0x1420, %rax
and $9177, %rdi
movb $0x51, (%rax)
nop
xor %r11, %r11

// Faulty Load
lea addresses_US+0x11420, %rdi
nop
nop
nop
nop
nop
cmp $2224, %rdx
mov (%rdi), %ebp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'51': 8}
51 51 51 51 51 51 51 51
*/
