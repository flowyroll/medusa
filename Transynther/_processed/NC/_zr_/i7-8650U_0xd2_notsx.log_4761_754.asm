.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3347, %rsi
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1cc47, %rsi
lea addresses_WT_ht+0x6877, %rdi
nop
nop
sub %r14, %r14
mov $89, %rcx
rep movsb
nop
nop
cmp $31960, %rax
lea addresses_WT_ht+0x11581, %r9
nop
nop
nop
inc %r15
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
sub $47127, %rsi
lea addresses_D_ht+0xf3fe, %rsi
lea addresses_D_ht+0xd1c, %rdi
nop
nop
nop
and $61269, %r12
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
add $1965, %rsi
lea addresses_D_ht+0x4066, %r14
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x6107, %rsi
lea addresses_D_ht+0x9447, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14
mov $96, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xa047, %rsi
lea addresses_WC_ht+0xd5be, %rdi
nop
nop
nop
and %rax, %rax
mov $63, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_A_ht+0x18d87, %rsi
lea addresses_A_ht+0x1e447, %rdi
nop
nop
nop
xor %rax, %rax
mov $106, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_A_ht+0x6047, %rsi
lea addresses_D_ht+0x5847, %rdi
clflush (%rsi)
nop
nop
add $40280, %r15
mov $46, %rcx
rep movsq
nop
nop
xor $53997, %r14
lea addresses_A_ht+0xd847, %rsi
lea addresses_A_ht+0xf9eb, %rdi
nop
nop
nop
cmp %r9, %r9
mov $76, %rcx
rep movsw
nop
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x14b07, %rax
nop
nop
and $27937, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_A_ht+0xd447, %rax
nop
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rax)
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x11e47, %r14
clflush (%r14)
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r12
movq %r12, (%r14)
nop
nop
nop
nop
cmp $8435, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx

// Load
mov $0x32a0fb00000007b7, %r11
nop
nop
nop
nop
nop
inc %r8
mov (%r11), %ebp
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0x5987, %r14
clflush (%r14)
nop
nop
cmp %r13, %r13
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and $60830, %r8

// Faulty Load
mov $0x7ca4120000000447, %rbp
nop
nop
nop
sub $33028, %r14
mov (%rbp), %r8w
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 4761}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
