.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb42c, %r13
sub $31691, %r10
mov (%r13), %r12w
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x6d50, %rax
nop
nop
inc %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rax)
nop
and $57705, %r14
lea addresses_D_ht+0x236c, %rsi
lea addresses_WT_ht+0x106ec, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $29162, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0xfd2c, %rax
nop
nop
nop
add $12197, %r10
movl $0x61626364, (%rax)
nop
nop
nop
xor $31001, %rsi
lea addresses_D_ht+0x7a6c, %r13
nop
and $59471, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r13)
inc %rsi
lea addresses_UC_ht+0x1e6ab, %rax
nop
dec %r10
movb $0x61, (%rax)
nop
nop
nop
sub $3342, %r14
lea addresses_D_ht+0x2b6c, %rsi
lea addresses_A_ht+0x1686c, %rdi
inc %r13
mov $31, %rcx
rep movsq
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x1b96c, %r13
nop
nop
and $3737, %r12
movb (%r13), %r14b
nop
nop
nop
cmp $51046, %rax
lea addresses_WC_ht+0x11f6c, %rsi
lea addresses_A_ht+0x12d6c, %rdi
clflush (%rdi)
nop
sub %rax, %rax
mov $71, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x9b6c, %r12
nop
xor %r10, %r10
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rcx
add %r10, %r10
lea addresses_WC_ht+0x1dad0, %rsi
lea addresses_D_ht+0x2f6c, %rdi
clflush (%rdi)
nop
and $32689, %r12
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x8d50, %rsi
lea addresses_D_ht+0xe3ec, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $3856, %rax
mov $38, %rcx
rep movsw
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x476c, %r13
nop
nop
and $62411, %rsi
mov (%r13), %r12
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x27a0, %rsi
lea addresses_normal_ht+0x1bb10, %rdi
and $5515, %r10
mov $95, %rcx
rep movsw
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x13a87, %r10
nop
nop
nop
and %r14, %r14
mov (%r10), %esi
nop
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0x36c, %rsi
mov $0x50eaa000000076c, %rdi
nop
nop
inc %r11
mov $8, %rcx
rep movsw
nop
nop
sub $22731, %r11

// Store
lea addresses_D+0x989c, %r13
nop
nop
nop
nop
nop
cmp $9445, %r14
movw $0x5152, (%r13)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0x1306c, %rdi
nop
nop
nop
and %rdx, %rdx
movl $0x51525354, (%rdi)
dec %r11

// Faulty Load
mov $0x50eaa000000076c, %r13
sub %r14, %r14
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_P', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'00': 4098, '5f': 17731}
00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 00 00 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 00 00 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 00 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 00 5f 5f 5f 00 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 5f 00 00 00 5f 00 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 00 00 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 00 00 5f 5f 00 00 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 00 00 5f 00 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 00 5f 5f 00 5f 5f 00 5f 5f 00 5f 5f 00 5f 00 00 5f 00 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 00 00 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 00 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 00 00 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 00 5f 00 5f 00 00 00 00 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 00 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 00 00 00 00 00 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 5f 00 00 00 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 00 00 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 00 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f
*/
