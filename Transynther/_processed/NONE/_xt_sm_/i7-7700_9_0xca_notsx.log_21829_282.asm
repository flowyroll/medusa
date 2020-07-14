.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16706, %rsi
lea addresses_A_ht+0xd406, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $10, %rcx
rep movsq
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x4936, %rsi
lea addresses_D_ht+0x34ee, %rdi
clflush (%rsi)
and $24356, %rbx
mov $70, %rcx
rep movsl
nop
and %rcx, %rcx
lea addresses_D_ht+0x1ca8a, %rdi
nop
dec %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
nop
sub $34040, %rdx
lea addresses_normal_ht+0x1940e, %rsi
lea addresses_WC_ht+0x1dd46, %rdi
nop
nop
nop
nop
nop
sub $32262, %r10
mov $74, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x5e86, %rsi
lea addresses_A_ht+0x1ed06, %rdi
clflush (%rdi)
nop
nop
cmp $31283, %r11
mov $114, %rcx
rep movsw
nop
nop
cmp $65308, %rdi
lea addresses_WT_ht+0x42ae, %rsi
lea addresses_D_ht+0x11a16, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x1839e, %rsi
lea addresses_A_ht+0x730e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $12, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_WC_ht+0x1a486, %r10
add %rcx, %rcx
movb $0x61, (%r10)
nop
nop
nop
cmp $34014, %rbx
lea addresses_A_ht+0x2c86, %rsi
lea addresses_normal_ht+0x23b6, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $71, %rcx
rep movsq
cmp $50883, %rcx
lea addresses_UC_ht+0x235e, %rsi
lea addresses_UC_ht+0x9ecc, %rdi
nop
add %r10, %r10
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0x65e1, %r14
nop
and %rbx, %rbx
movl $0x51525354, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
dec %r14

// Store
lea addresses_PSE+0x1c86, %r11
nop
add %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
xor $59509, %r14

// Store
lea addresses_PSE+0x1706a, %r11
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%r11)
nop
inc %r11

// Store
lea addresses_A+0x2686, %r14
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r14)
nop
xor %r14, %r14

// Store
lea addresses_normal+0xc86, %r8
nop
nop
nop
add $24615, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0xc86, %rdx
nop
nop
nop
nop
nop
and %r10, %r10
movb (%rdx), %bl
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
