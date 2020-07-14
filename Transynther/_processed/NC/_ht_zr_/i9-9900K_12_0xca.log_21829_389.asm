.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x57a5, %rsi
lea addresses_D_ht+0x6e7f, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $108, %rcx
rep movsq
nop
nop
nop
add $42852, %rsi
lea addresses_D_ht+0x161d, %r9
nop
nop
nop
nop
nop
and %rdx, %rdx
movw $0x6162, (%r9)
and $61921, %rsi
lea addresses_UC_ht+0xb0e5, %rdi
nop
nop
nop
xor $56981, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x6ead, %rdx
and $14798, %rdi
movb (%rdx), %r11b
nop
nop
nop
nop
nop
cmp $7042, %rsi
lea addresses_A_ht+0x1a2e5, %rsi
lea addresses_D_ht+0x1c5e5, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $83, %rcx
rep movsl
nop
cmp $37575, %r9
lea addresses_WT_ht+0x5ce5, %rsi
lea addresses_WT_ht+0x182b7, %rdi
sub $58084, %r15
mov $0, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x182e5, %rsi
lea addresses_WC_ht+0x104e5, %rdi
nop
nop
nop
xor %r9, %r9
mov $70, %rcx
rep movsq
nop
and %r9, %r9
lea addresses_UC_ht+0x80e5, %rsi
lea addresses_WT_ht+0x4f61, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $31478, %rdx
mov $82, %rcx
rep movsq
dec %rdi
lea addresses_WC_ht+0xc095, %rsi
lea addresses_WC_ht+0x15ae5, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $102, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_D_ht+0x6ce5, %rsi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rsi)
nop
nop
dec %rsi
lea addresses_WC_ht+0x17be5, %rsi
lea addresses_UC_ht+0x596d, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $3, %rcx
rep movsq
xor %rsi, %rsi
lea addresses_D_ht+0x1a12f, %rbp
nop
nop
inc %rsi
mov (%rbp), %r11
nop
nop
dec %rbp
lea addresses_D_ht+0x6fe5, %r15
clflush (%r15)
sub $17596, %r9
mov (%r15), %rdx
nop
nop
sub $3366, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_WT+0xf0e5, %rbx
nop
add %rax, %rax
movntdqa (%rbx), %xmm5
vpextrq $1, %xmm5, %r11

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdx
dec %rax

// Load
lea addresses_WC+0x685, %r15
nop
nop
nop
nop
nop
inc %r14
mov (%r15), %r11w
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
mov $0x5493db0000000ce5, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and $23751, %r11
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'44': 16569, '45': 3, '49': 163, '00': 3674, '48': 1420}
44 00 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 48 44 44 44 44 00 00 48 00 44 44 44 44 44 44 48 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 48 44 44 44 44 00 00 48 44 44 44 44 44 00 00 48 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 44 44 44 44 44 44 48 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 48 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 48 44 44 44 44 44 00 44 44 44 44 44 44 44 00 48 49 00 44 44 44 44 00 00 48 48 44 44 44 44 48 44 44 44 44 44 44 44 00 44 44 44 44 44 00 48 44 44 44 44 44 00 00 48 48 44 44 44 44 44 44 48 00 44 44 44 44 44 44 44 00 48 44 44 44 44 00 48 48 44 44 44 44 44 44 44 00 48 44 44 44 44 44 48 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 48 00 49 44 44 44 00 48 44 44 44 44 44 44 44 44 48 00 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 48 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 00 48 48 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 00 00 48 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 48 49 00 44 44 44 44 44 44 00 00 48 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 48 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 00 48 44 44 44 44 44 00 48 49 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 44 00 00 48 44 44 44 44 44 00 00 48 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 00 44 44 44 44 00 00 48 44 44 44 44 44 00 48 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 48 44 44 44 44 44 44 00 00 49 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 44 44 44 44 00 48 44 44 44 44 44 00 00 48 49 44 44 44 44 44 44 00 00 44 44 44 44 00 48 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 48 48 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 48 49 00 44 44 44 44 00 00 48 44 44 44 44 44 44 44 44 44 00 00 48 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 48 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 00 00 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 00 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 48 44 44 44 44 44 44 48 44 44 44 44 44 00 44 44
*/
