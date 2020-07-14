.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4139, %rbp
nop
nop
nop
and $2047, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rbp)
nop
inc %rdx
lea addresses_WT_ht+0x119ae, %rsi
lea addresses_D_ht+0x19139, %rdi
nop
nop
nop
nop
sub $8174, %rbx
mov $34, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0xd139, %rbp
nop
nop
xor %r9, %r9
mov (%rbp), %rcx
nop
nop
nop
add $63526, %rbp
lea addresses_WT_ht+0x17539, %rcx
nop
nop
lfence
movb (%rcx), %bl
nop
nop
nop
nop
and $20222, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbp

// Store
lea addresses_PSE+0x1f2b9, %rbp
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
mfence

// Store
lea addresses_WC+0x69f9, %r8
cmp %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
nop
cmp %rax, %rax

// Load
lea addresses_US+0x6939, %r12
sub $35874, %rbp
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
nop
sub $12476, %rax

// Load
lea addresses_PSE+0x1939, %r11
clflush (%r11)
nop
nop
nop
xor %rax, %rax
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
xor %r12, %r12

// Faulty Load
lea addresses_PSE+0x1939, %rax
clflush (%rax)
nop
nop
nop
nop
and $60320, %r13
movaps (%rax), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 4, '49': 140}
49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49
*/
