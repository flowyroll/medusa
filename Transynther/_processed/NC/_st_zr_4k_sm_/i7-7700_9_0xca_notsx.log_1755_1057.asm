.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12363, %rsi
lea addresses_UC_ht+0xe7b, %rdi
nop
nop
cmp $42270, %rax
mov $69, %rcx
rep movsq
sub %r12, %r12
lea addresses_WC_ht+0x112fb, %rsi
lea addresses_WT_ht+0x172fb, %rdi
nop
nop
nop
cmp %r11, %r11
mov $13, %rcx
rep movsq
nop
xor $1545, %rcx
lea addresses_normal_ht+0x132fb, %rsi
lea addresses_A_ht+0xfafb, %rdi
nop
nop
cmp $29792, %r10
mov $52, %rcx
rep movsb
nop
add $26855, %rax
lea addresses_WC_ht+0x1e7bb, %r12
nop
nop
nop
nop
nop
add $36721, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1d85b, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %rcx
movaps %xmm0, (%rcx)
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1effb, %rcx
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $45868, %r10
lea addresses_UC_ht+0x18efb, %rsi
lea addresses_UC_ht+0x4afb, %rdi
nop
nop
nop
nop
nop
add $51310, %r13
mov $9, %rcx
rep movsl
nop
nop
nop
and $4250, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
mov $0x2654cc00000002fb, %rbx
nop
nop
nop
nop
nop
sub $51159, %r13
movl $0x51525354, (%rbx)
nop
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x2fb, %rdi
nop
nop
nop
nop
dec %r9
movb $0x51, (%rdi)
sub %rbx, %rbx

// Store
mov $0xc26b300000002fb, %rsi
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
xor $31274, %rbx

// Faulty Load
mov $0xc26b300000002fb, %rbx
nop
nop
nop
and %rsi, %rsi
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 547, '58': 1208}
00 58 00 00 58 58 58 58 58 00 00 58 00 58 00 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 58 58 00 00 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 00 00 58 58 58 00 58 00 58 00 58 58 58 58 00 58 58 00 58 58 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 00 58 00 58 58 58 00 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 00 00 58 58 00 58 58 58 58 00 00 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 00 00 58 58 00 00 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 00 58 00 58 00 58 58 00 00 58 58 00 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 00 58 58 00 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 00 00 00 58 00 58 58 00 00 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 58 58 00 00 00 00 58 00 00 00 58 58 58 00 00 58 58 00 00 58 00 00 00 00 58 58 00 00 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 00 00 00 00 58 58 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 00 58 00 00 58 00 00 00 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 00 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 00 58 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 00 58 58 58 00 00 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 00 00 00 58 58 58 00 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58
*/
