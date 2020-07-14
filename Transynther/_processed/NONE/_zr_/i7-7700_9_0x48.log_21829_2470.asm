.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19e7e, %r11
nop
cmp $57016, %rdx
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x4fa2, %rcx
nop
nop
nop
nop
add $62327, %r12
movb (%rcx), %bl
nop
nop
nop
nop
nop
and $45076, %rsi
lea addresses_UC_ht+0x1c7a2, %r11
nop
nop
xor %r13, %r13
movb (%r11), %r12b
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x3352, %r13
sub $13632, %r11
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
add $10636, %r12
lea addresses_D_ht+0xf972, %rcx
nop
nop
sub $23513, %rbx
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x18862, %rbx
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbx)
xor $30220, %rsi
lea addresses_D_ht+0x108b1, %rcx
nop
add $40802, %rdx
movw $0x6162, (%rcx)
add $16941, %r13
lea addresses_WC_ht+0x16562, %r12
nop
nop
nop
xor $61040, %rbx
movb $0x61, (%r12)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x15de2, %r13
sub %rsi, %rsi
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm2
vpextrq $1, %xmm2, %rdx
add $26609, %r13
lea addresses_A_ht+0x3422, %rsi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
sub $61787, %rsi
lea addresses_D_ht+0xd0e2, %rsi
lea addresses_A_ht+0x1a4eb, %rdi
nop
nop
nop
nop
inc %rdx
mov $80, %rcx
rep movsb
nop
and $48928, %rdx
lea addresses_WC_ht+0x1bc92, %r11
nop
nop
nop
xor %rbx, %rbx
mov (%r11), %r12w
nop
nop
nop
nop
cmp $61470, %rcx
lea addresses_WC_ht+0x1dfa2, %rsi
lea addresses_UC_ht+0xa9a2, %rdi
nop
nop
nop
dec %r11
mov $88, %rcx
rep movsl
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x137a2, %rcx
nop
sub $8776, %rdi
movb $0x51, (%rcx)
inc %rsi

// Store
mov $0x222a6c0000000456, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $47854, %rsi
movl $0x51525354, (%rbx)
add %rsi, %rsi

// Faulty Load
lea addresses_A+0x9fa2, %rbx
nop
cmp %r10, %r10
mov (%rbx), %ecx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
