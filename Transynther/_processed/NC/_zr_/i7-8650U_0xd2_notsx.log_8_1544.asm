.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b960, %r14
nop
nop
nop
cmp $33300, %r9
mov (%r14), %r11w
add $50534, %rax
lea addresses_WC_ht+0x107e0, %rsi
lea addresses_normal_ht+0x18a88, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $48, %rcx
rep movsl
nop
nop
nop
nop
and $508, %rax
lea addresses_A_ht+0x16d60, %r11
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm2
vpextrq $1, %xmm2, %r14
nop
nop
nop
add %rax, %rax
lea addresses_D_ht+0x1d2d0, %r14
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
xor $6380, %r9
lea addresses_D_ht+0x4260, %r9
nop
nop
nop
nop
nop
xor $30270, %r14
mov (%r9), %rdi
nop
nop
nop
nop
sub $12171, %rdx
lea addresses_A_ht+0x547c, %rsi
lea addresses_D_ht+0x161e0, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $90, %rcx
rep movsw
nop
sub $10190, %r9
lea addresses_D_ht+0x18d1c, %rdx
nop
nop
nop
dec %rsi
mov (%rdx), %r11d
nop
nop
nop
nop
nop
cmp $46238, %r9
lea addresses_D_ht+0x91e0, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdi)
nop
cmp %r11, %r11
lea addresses_UC_ht+0xa920, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0xf660, %rcx
nop
sub $40790, %rdx
movb $0x61, (%rcx)
nop
xor $17080, %rsi
lea addresses_A_ht+0x1b0f4, %rsi
lea addresses_A_ht+0x162a0, %rdi
clflush (%rdi)
nop
nop
nop
xor $60144, %rdx
mov $85, %rcx
rep movsl
and $20207, %rax
lea addresses_UC_ht+0x1aa60, %rsi
lea addresses_normal_ht+0x1ec8e, %rdi
nop
xor %rdx, %rdx
mov $106, %rcx
rep movsw
inc %r11
lea addresses_D_ht+0x107b0, %rsi
nop
nop
cmp $43501, %r14
movl $0x61626364, (%rsi)
inc %rdx
lea addresses_normal_ht+0xede0, %rdi
nop
nop
nop
sub $58275, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
nop
and $32957, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp

// Faulty Load
mov $0x3ab09800000001e0, %r10
clflush (%r10)
nop
nop
nop
nop
xor $14725, %r14
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
