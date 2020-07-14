.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x12938, %r11
clflush (%r11)
sub $28298, %rbx
movb (%r11), %r15b
nop
sub $31573, %rdx
lea addresses_UC_ht+0x112f8, %rsi
lea addresses_normal_ht+0x3898, %rdi
nop
xor $63817, %rbp
mov $103, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $25487, %r15
lea addresses_normal_ht+0x10498, %rsi
lea addresses_UC_ht+0x3618, %rdi
sub $15755, %rbx
mov $99, %rcx
rep movsl
nop
and %rdx, %rdx
lea addresses_WC_ht+0x11910, %rbx
nop
nop
nop
nop
nop
inc %rdi
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
sub $20206, %rcx
lea addresses_WC_ht+0x12098, %r11
nop
nop
and $48556, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
sub $43752, %r15
lea addresses_UC_ht+0x15498, %rsi
lea addresses_WT_ht+0x11a34, %rdi
nop
nop
nop
nop
sub $60489, %rbp
mov $49, %rcx
rep movsq
nop
add $39261, %r15
lea addresses_UC_ht+0x1dc62, %rsi
lea addresses_UC_ht+0x838, %rdi
nop
nop
nop
cmp $36164, %rbx
mov $35, %rcx
rep movsq
nop
nop
xor $26882, %r11
lea addresses_normal_ht+0xfbf8, %r15
clflush (%r15)
nop
nop
nop
dec %r11
mov (%r15), %ecx
nop
nop
xor $38880, %rcx
lea addresses_D_ht+0xa2f8, %rsi
nop
nop
nop
and %rbx, %rbx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x28c8, %rbp
add $32599, %r15
mov (%rbp), %rbx
and $57236, %rsi
lea addresses_A_ht+0xdff0, %rbx
nop
cmp $42965, %r15
mov (%rbx), %cx
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rdi
push %rdx

// Load
lea addresses_A+0x7e98, %rdx
nop
nop
dec %r10
movb (%rdx), %r13b
add %r15, %r15

// Faulty Load
mov $0x5903b00000000898, %rdi
nop
nop
nop
dec %r15
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 13183, '48': 6382, '44': 2246, '04': 1, '47': 6, 'a6': 1, 'cc': 1, '06': 1, '3c': 1, 'b2': 2, '9e': 1, '98': 1, 'c6': 1, '49': 1, '08': 1}
00 48 48 00 00 00 44 00 00 00 00 00 48 48 00 00 00 48 48 48 00 00 00 00 44 48 48 00 00 00 00 44 44 48 48 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 48 48 00 00 00 00 00 48 48 00 48 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 44 48 48 00 00 00 00 00 48 48 00 44 00 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 00 00 00 00 00 44 48 48 00 00 00 00 00 48 48 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 00 00 44 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 48 48 48 00 00 00 00 00 44 48 00 00 00 48 48 00 00 44 48 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 48 00 44 00 00 00 48 48 00 00 00 00 48 00 00 00 48 48 00 00 00 48 48 00 00 44 48 48 00 00 48 00 00 00 00 48 00 00 00 00 48 00 00 00 44 44 48 48 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 48 48 00 00 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 48 48 00 00 00 48 48 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 44 44 48 00 00 00 00 48 48 00 00 00 00 44 48 00 00 00 48 48 00 00 00 48 48 00 00 44 00 48 44 00 44 48 00 00 00 00 44 00 48 48 00 00 00 48 48 00 00 00 48 00 44 00 00 00 00 44 44 48 44 00 00 48 00 48 44 48 48 00 00 00 48 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 48 48 00 00 48 44 00 00 00 00 00 48 48 00 00 00 00 44 00 00 00 44 48 48 48 00 00 44 00 48 48 48 00 44 00 44 48 48 44 00 44 48 48 00 00 44 44 48 48 48 00 00 44 00 00 48 00 00 44 00 48 48 00 00 44 44 48 00 00 44 48 48 44 00 44 44 48 00 00 00 44 48 48 48 44 00 00 44 00 44 48 00 44 00 00 48 44 44 48 00 44 00 44 44 00 00 00 48 48 48 00 48 48 00 00 48 00 00 44 44 00 00 44 00 00 48 48 48 00 44 00 44 00 48 44 00 44 00 00 44 44 48 44 48 44 48 48 00 44 44 44 00 44 44 00 00 44 44 00 48 00 00 44 48 00 44 00 48 00 00 48 48 00 48 48 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 44 48 48 48 48 48 00 00 00 00 00 44 00 00 00 00 44 44 48 48 48 48 48 00 00 00 00 00 44 00 00 48 00 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 44 48 00 00 00 44 48 00 00 00 00 48 48 00 00 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 00 00 48 48 00 00 00 44 48 00 00 00 00 48 48 00 44 00 00 48 48 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 48 48 00 00 00 00 48 48 00 00 00 00 48 48
*/
