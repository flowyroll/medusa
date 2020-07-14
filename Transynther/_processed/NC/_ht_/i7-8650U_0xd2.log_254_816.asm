.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc381, %rsi
nop
xor $43178, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_D_ht+0x58f1, %rsi
lea addresses_WC_ht+0x109, %rdi
clflush (%rsi)
nop
and $52133, %rbp
mov $86, %rcx
rep movsw
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1b9f1, %rsi
lea addresses_normal_ht+0x25b1, %rdi
nop
nop
cmp $32819, %r15
mov $63, %rcx
rep movsw
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_RW+0x192e1, %rbx
clflush (%rbx)
nop
and %rsi, %rsi
movb (%rbx), %r14b
nop
nop
nop
add %r14, %r14

// Load
lea addresses_A+0x182f1, %rbx
clflush (%rbx)
xor $25871, %r10
vmovntdqa (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x126a1, %r8
nop
nop
add $2470, %rax
movb $0x51, (%r8)
nop
nop
inc %rbx

// Faulty Load
mov $0x5ed5ba00000004f1, %r8
nop
nop
nop
sub $63056, %rsi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'46': 238, '45': 16}
46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46
*/
