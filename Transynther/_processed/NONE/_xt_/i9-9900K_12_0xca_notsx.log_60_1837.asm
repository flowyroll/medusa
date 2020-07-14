.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18f9f, %rcx
nop
sub $50179, %rsi
movl $0x61626364, (%rcx)
dec %r11
lea addresses_UC_ht+0x17abb, %r14
nop
nop
nop
add %r12, %r12
movb (%r14), %r13b
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0xdf9f, %r8
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
sub %r13, %r13
lea addresses_normal_ht+0x6b9f, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, (%r11)
dec %rcx
lea addresses_D_ht+0x1e81f, %rsi
lea addresses_A_ht+0x1289f, %rdi
nop
nop
nop
nop
add $53769, %r12
mov $41, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x11a1f, %r8
nop
nop
nop
nop
nop
sub $12148, %r11
movw $0x6162, (%r8)
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x239f, %rdi
sub %r13, %r13
mov (%rdi), %cx
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x11c27, %rsi
lea addresses_WC_ht+0x8f9f, %rdi
clflush (%rdi)
nop
nop
nop
add $45777, %r11
mov $25, %rcx
rep movsq
and %rdi, %rdi
lea addresses_UC_ht+0x1079f, %rcx
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x61, (%rcx)
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x74ff, %r11
xor %rdi, %rdi
mov (%r11), %esi
nop
nop
nop
sub $56130, %r11
lea addresses_normal_ht+0xbe46, %rsi
lea addresses_A_ht+0xf721, %rdi
nop
nop
nop
and $25133, %r14
mov $126, %rcx
rep movsq
dec %rcx
lea addresses_normal_ht+0xf79f, %rsi
and %r8, %r8
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1259f, %rcx
nop
nop
dec %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
nop
nop
add $58945, %r12
lea addresses_WC_ht+0x1dba7, %r11
nop
nop
nop
nop
nop
and $59241, %rcx
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
nop
add $19784, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x65ada800000005df, %rsi
xor $24253, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_WC+0x13b9f, %r13
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r13)
nop
nop
nop
nop
nop
add $39978, %rax

// Faulty Load
lea addresses_RW+0x1df9f, %r14
and %rdi, %rdi
movb (%r14), %r12b
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'32': 60}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
