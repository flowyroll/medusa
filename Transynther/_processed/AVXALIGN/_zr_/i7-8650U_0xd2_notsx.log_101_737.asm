.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7fb1, %r9
nop
nop
nop
nop
nop
cmp $39501, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r9)
xor %rcx, %rcx
lea addresses_normal_ht+0x4e91, %rsi
lea addresses_A_ht+0x1a651, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $87, %rcx
rep movsl
nop
nop
xor $26965, %rcx
lea addresses_WT_ht+0xaff1, %rsi
lea addresses_A_ht+0x14377, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rbx, %rbx
mov $35, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0xa6f1, %rsi
lea addresses_D_ht+0x1b305, %rdi
nop
dec %rdx
mov $71, %rcx
rep movsw
nop
sub $42242, %r8
lea addresses_WC_ht+0x1ee37, %rsi
lea addresses_normal_ht+0x162f1, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $22, %rcx
rep movsl
nop
nop
nop
add $8526, %rsi
lea addresses_D_ht+0x1eb31, %r8
nop
nop
nop
and $17844, %r9
movl $0x61626364, (%r8)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xc8f1, %rsi
lea addresses_A_ht+0x15cf1, %rdi
nop
nop
sub $33431, %rdx
mov $20, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_UC_ht+0x1dcf1, %rdx
nop
nop
nop
nop
and $62922, %r9
mov (%rdx), %si
dec %rsi
lea addresses_D_ht+0xbb9d, %rbx
and $15315, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax

// Faulty Load
lea addresses_US+0x154f1, %r11
and $2268, %r14
mov (%r11), %ax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 101}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
