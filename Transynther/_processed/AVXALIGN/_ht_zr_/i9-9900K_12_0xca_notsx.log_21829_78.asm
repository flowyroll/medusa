.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf4a7, %rsi
lea addresses_UC_ht+0x13947, %rdi
nop
nop
nop
and %rbx, %rbx
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
add $29411, %rax
lea addresses_WT_ht+0xbb5f, %rsi
and %r11, %r11
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x17e41, %rbx
nop
nop
nop
nop
nop
add $52277, %r15
mov (%rbx), %rcx
nop
nop
nop
nop
nop
and $11323, %rsi
lea addresses_UC_ht+0x147a7, %r15
nop
nop
nop
nop
xor %rax, %rax
movl $0x61626364, (%r15)
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x1baaf, %rsi
lea addresses_WC_ht+0xb1a7, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $62628, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx

// Load
lea addresses_PSE+0x147a7, %r14
add $63172, %r11
mov (%r14), %r12w
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_WT+0x80a7, %rbx
nop
nop
nop
nop
nop
xor $52648, %r12
mov (%rbx), %r11d
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_UC+0x915d, %rcx
clflush (%rcx)
nop
nop
nop
dec %r10
movb $0x51, (%rcx)
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_WC+0x34a7, %r10
nop
nop
nop
nop
cmp $51847, %r14
vmovntdqa (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'00': 11513, '48': 10316}
00 00 00 00 48 00 48 00 00 00 48 48 00 48 48 48 00 48 00 00 00 48 48 00 48 00 00 48 48 48 00 00 48 00 48 00 48 48 48 00 48 00 00 48 00 48 48 48 00 48 00 00 48 00 00 00 00 48 00 00 48 48 48 00 48 00 00 48 00 00 48 48 48 00 48 00 00 48 00 00 00 00 48 00 00 00 48 48 00 48 00 00 48 48 48 00 48 00 00 48 48 48 00 00 00 00 48 48 00 48 00 48 00 48 48 48 00 48 00 00 48 48 48 00 00 00 00 00 48 48 48 00 00 00 00 48 48 00 00 00 00 48 00 00 48 00 00 00 48 00 48 48 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 48 48 00 00 48 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 48 00 00 00 00 00 48 00 00 48 48 48 00 48 00 48 48 48 00 00 00 48 00 48 48 48 00 48 00 00 00 48 48 48 00 00 48 00 00 00 00 48 00 00 00 48 48 48 00 00 00 48 48 48 00 48 00 48 00 00 48 00 48 48 00 48 00 00 00 48 48 00 00 00 48 48 48 00 48 00 00 00 48 48 00 48 00 00 48 48 48 48 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 48 00 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 48 00 48 00 00 48 00 00 48 00 48 48 48 48 00 00 00 48 00 00 48 48 00 00 48 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 00 48 48 48 00 48 00 00 00 00 00 00 48 00 48 00 00 48 00 48 48 00 48 00 00 48 48 48 00 48 00 00 48 48 00 00 48 00 48 48 48 48 00 00 48 00 48 48 48 00 00 00 00 48 48 48 00 48 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 00 48 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 48 48 48 00 00 00 00 48 00 00 00 48 00 00 00 48 48 00 48 00 00 48 00 48 48 48 00 48 00 00 00 48 00 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 48 00 00 48 00 48 48 00 48 00 48 48 48 00 48 00 00 00 48 48 00 00 48 48 48 00 48 00 00 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 48 48 00 48 00 00 48 48 48 00 48 00 00 00 00 48 48 00 48 48 48 00 00 48 00 00 48 48 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 00 48 48 48 00 48 00 48 00 48 48 48 00 00 48 00 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 48 48 48 00 48 48 00 00 00 00 00 48 00 48 00 48 00 00 48 48 00 00 00 00 00 48 00 48 48 00 00 00 00 48 00 48 00 00 48 48 48 48 00 00 48 00 00 00 48 48 00 00 00 00 48 48 48 00 48 00 00 00 48 48 48 00 00 48 48 00 00 48 00 48 00 48 48 00 00 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 48 48 48 48 00 00 00 00 00 48 48 48 00 00 48 48 48 00 00 48 48 00 00 48 48 00 48 48 48 48 00 00 00 48 48 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 48 00 48 00 48 00 48 48 00 00 48 48 00 48 00 00 48 48 00 48 00 00 48 00 00 48 00 00 00 00 48 48 48 00 00 00 48 00 48 00 00 48 00 48 00 00 00 48 48 48 00 48 48 48 00 00 48 48 48 48 00 00 48 48 48 00 48 48 00 00 00 48 00 48 00 48 00 48 48 00 00 48 00 48 48 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 48 48 00 48 00 00 00 00 48 48 48 00 48 00 48 00 00 48 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 00 48 48 48 00 48 48 48 00 48 48 48 48 00 00 00 00 48 00 00 48 00 48 00 48 00 48 48 48 00 00 00 00 48 00 00 48 00 48 00 48 48 48 00 00 48 00 00 48 48 48
*/
