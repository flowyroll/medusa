.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1207b, %rsi
lea addresses_WC_ht+0x1aa7b, %rdi
nop
nop
nop
dec %r14
mov $126, %rcx
rep movsb
and $61304, %rbx
lea addresses_WT_ht+0x9bd3, %r11
nop
and $57462, %r14
movb $0x61, (%r11)
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x169fb, %rcx
nop
and %rbx, %rbx
movw $0x6162, (%rcx)
nop
dec %rsi
lea addresses_normal_ht+0x1b16b, %rsi
lea addresses_normal_ht+0x2c7b, %rdi
clflush (%rdi)
and $34329, %r12
mov $12, %rcx
rep movsb
and %rsi, %rsi
lea addresses_WC_ht+0x114db, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
and $45629, %r12
lea addresses_normal_ht+0xc3bb, %rsi
lea addresses_WC_ht+0xd7b, %rdi
nop
nop
dec %rax
mov $21, %rcx
rep movsq
nop
nop
nop
nop
add $28671, %r12
lea addresses_A_ht+0x1d1fb, %rdi
nop
sub %rcx, %rcx
mov (%rdi), %ebx
nop
nop
nop
nop
add $42937, %rsi
lea addresses_WT_ht+0xde7b, %rsi
lea addresses_WT_ht+0x1c7b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $19822, %r12
mov $25, %rcx
rep movsq
nop
nop
nop
nop
sub $41096, %rbx
lea addresses_WC_ht+0x667b, %rdi
nop
nop
nop
nop
mfence
mov (%rdi), %r11
nop
nop
nop
and $23775, %rcx
lea addresses_WC_ht+0x1bd10, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x8a0b, %r12
nop
cmp $7527, %rax
movb (%r12), %cl
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x130a7, %rsi
lea addresses_D_ht+0x1c5db, %rdi
add $21605, %r12
mov $11, %rcx
rep movsq
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x1d6db, %rsi
lea addresses_D_ht+0x188b3, %rdi
nop
nop
cmp %rax, %rax
mov $79, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x12c33, %rsi
lea addresses_WC_ht+0xb67b, %rdi
clflush (%rdi)
nop
cmp $43570, %rbx
mov $79, %rcx
rep movsw
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0xdd0f, %r12
sub $59594, %rax
movb $0x51, (%r12)
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x1a1c3, %r11
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x9a7b, %rax
nop
cmp $26167, %rsi
movw $0x5152, (%rax)
nop
and $31503, %r11

// Faulty Load
lea addresses_RW+0x527b, %rax
nop
add $26758, %r11
vmovntdqa (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'45': 336, '48': 7712, '44': 1491, '49': 7913, '00': 4377}
48 48 49 49 00 00 49 44 44 48 49 49 49 48 49 00 49 48 00 00 00 48 48 48 48 00 48 48 00 49 00 49 49 48 48 48 44 49 49 49 48 00 49 49 49 49 48 48 48 48 49 49 48 00 49 49 48 48 44 49 49 49 48 48 48 00 44 48 48 45 48 48 49 00 49 48 48 00 00 00 00 48 49 00 44 49 49 00 48 44 48 44 48 45 00 48 49 49 49 48 48 49 49 49 48 49 49 49 48 49 44 49 48 49 48 48 48 48 48 48 00 48 48 48 49 48 48 48 00 48 48 49 49 48 48 48 00 00 48 49 49 48 49 44 49 48 48 49 00 00 49 48 48 49 48 49 49 49 00 00 48 49 49 00 49 00 49 49 49 00 00 49 49 44 00 49 48 00 49 48 44 48 00 49 49 49 49 00 48 45 49 49 49 49 49 00 49 44 48 00 44 00 48 48 44 48 44 49 49 49 00 48 00 00 48 00 00 49 49 49 48 48 48 49 49 49 48 00 44 48 00 48 44 48 49 49 49 48 00 00 48 48 49 49 48 00 49 48 48 49 48 49 00 48 48 48 49 48 48 48 48 49 44 48 48 49 49 00 00 00 48 49 49 00 00 00 49 48 48 48 48 48 48 49 49 49 49 45 49 48 48 49 48 49 00 00 49 48 48 48 48 48 48 00 49 49 49 48 48 48 49 49 48 49 49 48 00 48 00 00 49 48 44 48 00 00 49 49 49 48 48 48 48 00 48 48 48 48 00 00 00 45 48 49 49 00 48 48 00 00 00 49 49 48 00 49 49 49 48 00 48 48 00 00 49 49 49 48 00 48 48 48 49 49 49 49 49 00 49 00 00 48 49 49 49 49 44 49 49 00 48 00 49 00 48 00 48 48 49 49 49 49 48 49 48 48 00 49 48 00 49 49 48 49 48 48 48 49 49 48 49 49 00 49 49 49 49 44 44 48 48 00 44 49 48 48 49 49 00 48 48 48 48 00 49 00 49 49 49 00 48 48 49 00 48 48 48 49 48 48 49 49 49 49 48 48 49 48 49 00 49 49 49 44 48 44 44 48 48 00 49 49 48 00 49 49 44 49 49 00 48 00 00 49 44 00 49 00 49 49 48 48 00 49 49 48 48 48 48 49 49 00 49 48 48 00 48 48 48 49 49 00 49 00 48 48 48 48 00 49 48 00 49 49 49 49 49 48 48 44 49 48 00 49 49 49 48 48 49 49 48 00 48 49 44 49 49 00 48 48 00 49 49 49 00 48 00 48 48 48 00 48 00 48 00 48 48 00 00 48 44 00 48 48 00 45 49 49 49 00 48 49 00 00 49 49 44 49 49 49 49 49 48 49 48 48 00 44 49 48 48 49 49 49 00 48 48 49 49 49 00 00 00 49 49 48 48 00 48 00 48 48 00 49 48 00 00 48 48 48 48 49 49 00 49 49 00 48 49 49 49 44 49 49 00 00 00 48 00 49 48 48 48 00 00 49 49 48 48 49 48 00 48 48 44 49 48 00 48 48 48 00 48 49 00 48 49 49 48 49 49 49 48 49 49 49 49 49 49 00 48 49 49 00 49 48 49 49 49 49 49 48 48 00 48 48 48 49 00 48 48 49 49 48 48 00 49 48 48 49 48 48 00 49 49 49 48 49 49 48 00 48 00 00 00 48 49 48 49 48 00 49 49 48 00 48 00 48 48 48 48 45 48 48 48 48 00 48 49 48 49 49 49 00 48 49 49 44 48 48 00 48 48 00 48 48 49 00 49 48 49 49 49 48 44 00 00 00 49 48 48 48 00 48 48 00 49 49 48 48 48 49 49 49 48 48 48 44 49 49 48 00 48 49 44 48 48 49 49 48 49 49 48 48 49 49 48 48 00 49 45 49 00 48 00 48 49 49 44 49 49 48 49 48 48 48 49 00 49 49 44 48 44 00 49 49 49 49 44 49 49 48 48 48 48 00 48 48 00 48 44 00 44 49 49 00 48 49 49 44 48 48 48 48 00 44 00 00 49 49 00 49 49 49 49 48 48 00 00 00 00 49 44 49 48 48 49 49 00 00 48 44 48 48 48 44 49 49 00 49 44 44 48 00 49 48 49 00 00 49 48 00 48 00 48 49 48 44 00 00 49 48 49 00 00 48 48 48 49 48 00 48 49 00 49 44 00 48 44 49 49 49 49 48 00 00 00 49 49 00 48 48 49 49 44 49 49 49 49 49 49 49 49 49 48 49 49 49 49 48
*/
