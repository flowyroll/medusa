.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1961e, %rax
nop
sub %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
cmp $22428, %rbx
lea addresses_UC_ht+0x8e1e, %rbx
nop
nop
nop
nop
xor $49539, %r11
movb (%rbx), %r10b
sub %r10, %r10
lea addresses_D_ht+0x1491e, %r14
nop
sub %r11, %r11
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x88ee, %rbx
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %rbx
movntdq %xmm7, (%rbx)
add $24751, %r10
lea addresses_WC_ht+0x1131e, %r11
nop
nop
nop
nop
nop
inc %rax
mov (%r11), %r10w
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x1cc1e, %rbx
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
cmp $25729, %rax
lea addresses_D_ht+0xb26, %rsi
lea addresses_D_ht+0x45fe, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $61378, %r10
mov $9, %rcx
rep movsl
nop
nop
nop
and $40216, %r14
lea addresses_UC_ht+0xda1e, %rsi
lea addresses_A_ht+0x1f1e, %rdi
nop
nop
nop
nop
and $43181, %rbx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
sub $51086, %rsi
lea addresses_D_ht+0x1383e, %r14
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xd61e, %rbx
nop
nop
nop
nop
nop
xor $63598, %r13
movb $0x61, (%rbx)
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x640e, %r10
nop
nop
inc %rdi
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x8b7a, %rax
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rax)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x167de, %r13
nop
nop
nop
nop
inc %rax
movb $0x61, (%r13)
nop
nop
nop
nop
add $52293, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Store
mov $0x41e, %rax
clflush (%rax)
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rax)
nop
sub $45308, %r14

// Faulty Load
lea addresses_RW+0xe1e, %r11
add $37342, %r8
mov (%r11), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'32': 1}
32
*/
