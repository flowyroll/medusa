.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x15e67, %rbp
nop
xor $33805, %r15
mov (%rbp), %r8w
nop
nop
cmp $24341, %rdi
lea addresses_UC_ht+0x1eedf, %rdx
cmp %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
inc %r8
lea addresses_WC_ht+0x4067, %rsi
lea addresses_D_ht+0x1c6a7, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $65, %rcx
rep movsl
nop
nop
add $38537, %rdx
lea addresses_D_ht+0x87cf, %rsi
lea addresses_UC_ht+0x4e67, %rdi
sub $55940, %rbx
mov $54, %rcx
rep movsl
nop
xor $31134, %rbp
lea addresses_UC_ht+0xf667, %rsi
lea addresses_WC_ht+0x1c667, %rdi
nop
nop
inc %r11
mov $15, %rcx
rep movsq
add $54699, %rdx
lea addresses_D_ht+0x6787, %rsi
lea addresses_WC_ht+0x7f27, %rdi
nop
nop
xor $37340, %rbx
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $42370, %rdi
lea addresses_A_ht+0x132e7, %rbp
nop
add $47741, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor $3936, %r15
lea addresses_A_ht+0x4eb7, %rcx
nop
xor %rdx, %rdx
movb (%rcx), %r15b
cmp %rdx, %rdx
lea addresses_D_ht+0x42ba, %rsi
lea addresses_UC_ht+0x10277, %rdi
and $2730, %rbx
mov $102, %rcx
rep movsq
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x109e7, %rsi
lea addresses_A_ht+0x144c7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp %r11, %r11
mov $37, %rcx
rep movsq
nop
nop
and $44591, %r15
lea addresses_UC_ht+0xee67, %r11
nop
nop
nop
nop
add $59047, %r8
movl $0x61626364, (%r11)
nop
cmp $32555, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Load
lea addresses_WC+0xc867, %rax
nop
nop
cmp $53863, %rcx
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_US+0x5751, %rbp
add $53708, %r13
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
inc %rax

// Faulty Load
mov $0x76403b0000000e67, %rbp
nop
nop
nop
xor $46311, %r13
mov (%rbp), %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 125}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
