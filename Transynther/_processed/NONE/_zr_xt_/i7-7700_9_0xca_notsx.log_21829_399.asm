.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1161c, %rsi
nop
nop
nop
and $29288, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
sub $14193, %r15
lea addresses_D_ht+0x14a1c, %rbx
nop
nop
nop
cmp %rcx, %rcx
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x16a1c, %rcx
nop
nop
xor %rbp, %rbp
movb (%rcx), %bl
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x1ba1c, %rcx
nop
nop
nop
add $25401, %rbp
movl $0x61626364, (%rcx)
xor $26630, %rsi
lea addresses_A_ht+0x1dcfc, %rbp
nop
add $11697, %r15
movl $0x61626364, (%rbp)
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xf61c, %rsi
lea addresses_normal_ht+0xfe3c, %rdi
nop
nop
nop
nop
nop
add $33780, %rax
mov $77, %rcx
rep movsl
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0xf714, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $47230, %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
inc %r11
lea addresses_WT_ht+0xd91c, %r15
nop
nop
nop
nop
and %rbp, %rbp
mov (%r15), %eax
nop
nop
nop
xor $32165, %r15
lea addresses_UC_ht+0x1161c, %r11
nop
nop
nop
cmp $39452, %rbp
movb (%r11), %bl
sub $36552, %r11
lea addresses_WT_ht+0xc2bc, %rsi
xor $49578, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp $4455, %rax
lea addresses_WC_ht+0x1691e, %r11
nop
cmp %rdi, %rdi
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x73ec, %r15
clflush (%r15)
nop
nop
nop
nop
sub $17929, %rbx
movb $0x61, (%r15)
nop
nop
nop
nop
cmp $51572, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x16874, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
mfence

// Store
lea addresses_WT+0x424, %rbp
nop
xor $34684, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_A+0x1c61c, %r14
clflush (%r14)
nop
nop
nop
nop
and %rbp, %rbp
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
