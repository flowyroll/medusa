.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19f2d, %rax
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %rax
movaps %xmm0, (%rax)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x1c8ed, %rsi
lea addresses_A_ht+0x763d, %rdi
nop
cmp $41520, %r8
mov $0, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_WT_ht+0xb6fd, %r15
clflush (%r15)
nop
nop
cmp %rax, %rax
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1c72d, %r13
add $37873, %r15
mov (%r13), %rcx
cmp $31768, %rcx
lea addresses_D_ht+0x7f17, %r13
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %r13
vmovaps %ymm4, (%r13)
cmp $63326, %rax
lea addresses_A_ht+0x1b3ad, %rsi
lea addresses_A_ht+0x154ad, %rdi
clflush (%rsi)
nop
nop
add $15599, %r11
mov $53, %rcx
rep movsw
nop
nop
sub $63558, %rdi
lea addresses_normal_ht+0x1b2d, %rdi
clflush (%rdi)
nop
nop
nop
xor %r8, %r8
mov (%rdi), %r15w
nop
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx

// Load
mov $0x6943550000000871, %rbx
nop
nop
nop
nop
nop
cmp $63629, %rbp
mov (%rbx), %r12d
nop
nop
nop
add $37852, %rbp

// Faulty Load
lea addresses_WT+0x1c32d, %r12
nop
nop
sub $45603, %r15
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 11}}
{'39': 33}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
