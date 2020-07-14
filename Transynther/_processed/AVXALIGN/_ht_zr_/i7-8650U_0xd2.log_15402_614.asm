.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4b14, %rsi
lea addresses_D_ht+0x1a0d4, %rdi
add $38221, %r15
mov $12, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x1d714, %rbx
nop
and $36415, %rdx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
add %r11, %r11
lea addresses_A_ht+0x9514, %r11
nop
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%r11)
nop
nop
nop
cmp $30890, %r15
lea addresses_WC_ht+0x10d14, %rsi
nop
nop
nop
nop
sub $27451, %rcx
mov (%rsi), %r15
nop
nop
and $2227, %rdi
lea addresses_normal_ht+0x1d55d, %rsi
lea addresses_A_ht+0x1d914, %rdi
xor %r14, %r14
mov $50, %rcx
rep movsq
xor %r11, %r11
lea addresses_A_ht+0x12d14, %r11
cmp $27015, %r14
mov (%r11), %ebx
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x7694, %rcx
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
and $61936, %rsi
lea addresses_normal_ht+0x11514, %rsi
lea addresses_D_ht+0x11154, %rdi
nop
nop
nop
nop
nop
cmp $40128, %r11
mov $54, %rcx
rep movsl
nop
nop
add $3081, %r11
lea addresses_A_ht+0x1c114, %r11
nop
nop
nop
nop
nop
sub $62312, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
and $0xffffffffffffffc0, %r11
movaps %xmm6, (%r11)
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1fd4, %rdi
clflush (%rdi)
nop
nop
nop
cmp $60175, %rcx
mov (%rdi), %rbx
nop
xor %r14, %r14
lea addresses_A_ht+0xf774, %rsi
nop
nop
sub %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp $53411, %rbx
lea addresses_WC_ht+0x1c714, %rsi
lea addresses_D_ht+0x4714, %rdi
nop
nop
nop
cmp $21561, %r11
mov $44, %rcx
rep movsb
nop
nop
nop
nop
and $23472, %r15
lea addresses_UC_ht+0x14b14, %r14
nop
nop
nop
nop
add $44178, %rbx
movw $0x6162, (%r14)
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x5d14, %r11
nop
nop
nop
and %r9, %r9
vmovntdqa (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'44': 724, '48': 2597, '00': 12050, '49': 31}
44 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 44 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 44 48 44 00 00 00 00 44 00 00 00 00 44 00 48 00 00 48 44 00 00 00 00 00 44 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 44 00 00 48 00 00 48 00 00 00 48 48 48 00 00 00 48 00 48 44 00 00 00 48 00 00 00 48 00 48 48 00 48 00 00 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 48 00 48 00 48 00 00 00 48 00 00 00 44 48 00 00 00 00 00 00 48 44 00 00 00 00 00 00 48 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 44 00 00 00 44 44 48 00 00 00 00 44 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 44 48 48 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 48 44 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 00 48 00 00 44 00 48 00 00 00 44 48 00 00 00 44 48 00 00 48 48 48 00 44 48 00 00 48 00 48 00 44 00 00 00 44 00 00 48 00 00 00 00 00 00 44 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 44 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 44 48 00 00 48 00 48 44 48 00 00 00 00 44 48 00 48 00 00 00 44 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 44 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 44 00 00 00 00 48 00 00 00 00 00 00 48 44 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 48 00 00 00 00 00 44 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 00 00 00 44 48 00 48 00 00 00 00 44 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 44 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 44 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 44 00 48 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 44 00 00 48 48 00 00 00 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 44 00 00 48 00
*/
