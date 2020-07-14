.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xac03, %rsi
lea addresses_WC_ht+0x169b, %rdi
and %rbp, %rbp
mov $1, %rcx
rep movsl
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x1d901, %r11
nop
nop
and $42982, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r11
movaps %xmm7, (%r11)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x127bb, %rsi
lea addresses_A_ht+0x1480b, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r11
mov $32, %rcx
rep movsb
nop
inc %rbp
lea addresses_WT_ht+0x8883, %r11
nop
nop
nop
dec %rsi
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
xor $60004, %rbp
lea addresses_WT_ht+0x16d03, %rdi
nop
nop
nop
nop
cmp $60292, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x6af7, %rsi
lea addresses_normal_ht+0x18235, %rdi
nop
nop
nop
add $2629, %r10
mov $63, %rcx
rep movsb
nop
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0xa483, %r10
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r10)
xor %r11, %r11
lea addresses_WC_ht+0x1ce3b, %rsi
lea addresses_normal_ht+0x19103, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $125, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1e66f, %rsi
lea addresses_WC_ht+0x16403, %rdi
nop
nop
xor $13969, %rbp
mov $35, %rcx
rep movsw
nop
add %r14, %r14
lea addresses_normal_ht+0x10483, %rbp
nop
cmp $22868, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0xc083, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
add $7312, %rcx
lea addresses_normal_ht+0x9163, %r11
nop
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%r11)
nop
nop
xor $65301, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_WT+0x2683, %rbx
nop
xor %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
xor $61344, %r9

// Store
mov $0x69f3e50000000083, %rax
nop
nop
nop
nop
nop
inc %rdi
movw $0x5152, (%rax)
sub %rdi, %rdi

// Store
lea addresses_A+0xde3, %rax
dec %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovntdq %ymm0, (%rax)
nop
nop
nop
add %r13, %r13

// Load
lea addresses_D+0x106b9, %rdi
nop
nop
nop
xor %r8, %r8
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
mov $0x69f3e50000000083, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
vmovaps (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'52': 49, '6d': 10}
52 52 52 52 52 6d 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 6d 52 52 52 6d 52 52 52 52 52 52 52 52 52 52 52 52 6d 6d 6d 52 52 6d 52 52 52 6d 6d 52
*/
