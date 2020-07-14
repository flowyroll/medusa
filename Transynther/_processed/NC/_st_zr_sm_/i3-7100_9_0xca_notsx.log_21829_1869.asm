.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x9953, %rbx
add %r11, %r11
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x17aab, %rsi
lea addresses_WC_ht+0x4e4b, %rdi
nop
and $44023, %rdx
mov $5, %rcx
rep movsw
nop
nop
mfence
lea addresses_WT_ht+0x2c2b, %r13
nop
nop
nop
nop
nop
and $21936, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor $45989, %rsi
lea addresses_WC_ht+0x1cc2b, %rsi
lea addresses_D_ht+0xc062, %rdi
nop
nop
nop
and %rbx, %rbx
mov $112, %rcx
rep movsl
nop
dec %rdi
lea addresses_WC_ht+0xb68b, %rbp
nop
nop
nop
nop
nop
and $55263, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
xor $52641, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_D+0x10ddb, %rcx
nop
sub %r15, %r15
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %rcx
xor %r10, %r10

// Store
lea addresses_A+0x6193, %r15
nop
nop
nop
inc %rax
movl $0x51525354, (%r15)
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_D+0x1b63f, %rax
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_US+0x1ca2b, %r10
clflush (%r10)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movaps %xmm3, (%r10)
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0x260622000000062b, %rbx
nop
nop
nop
nop
nop
xor $32247, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%rbx)

// Exception!!!
nop
nop
mov (0), %r11
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_D+0x422b, %r10
nop
nop
nop
nop
nop
xor $17873, %rcx
movb $0x51, (%r10)
inc %r15

// Store
mov $0x136a400000000feb, %rcx
nop
nop
add $32432, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r15
nop
dec %rbx

// Faulty Load
mov $0x260622000000062b, %r10
nop
inc %rcx
mov (%r10), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'58': 12920, '00': 8909}
58 00 58 58 00 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 00 58 00 00 00 58 58 00 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 00 58 00 00 58 58 58 58 58 00 58 00 58 00 00 00 58 58 00 00 58 00 58 58 58 58 58 58 00 00 00 58 58 58 00 58 00 00 58 58 00 00 58 00 58 58 58 00 00 58 58 00 58 58 00 58 00 00 00 58 00 00 58 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 00 00 58 58 58 58 00 58 00 58 00 58 58 00 00 58 00 58 00 58 00 00 58 58 58 00 58 00 58 58 00 00 58 58 00 00 00 00 00 58 00 58 58 58 00 58 00 58 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 00 00 58 00 58 00 00 58 00 58 58 58 58 00 58 00 58 00 58 00 58 00 00 00 58 58 58 00 00 00 58 58 58 00 58 58 58 58 00 58 58 58 00 00 00 00 00 58 58 00 58 58 58 00 58 58 58 00 00 58 00 58 58 00 58 58 58 00 00 58 58 00 58 00 58 00 58 00 58 00 00 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 00 00 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 00 58 58 58 58 00 58 58 00 58 00 58 00 00 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 00 00 00 58 58 58 00 58 58 58 00 58 00 58 00 00 00 58 00 58 58 58 58 58 58 00 00 00 58 00 58 58 00 58 58 00 58 58 00 58 00 58 00 58 00 00 58 00 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 00 00 00 00 58 00 00 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 00 58 58 00 58 00 58 00 00 58 58 58 58 00 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 00 58 00 58 58 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 00 58 58 00 00 58 58 00 58 00 58 58 00 00 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 00 58 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 00 00 58 58 00 00 58 58 58 00 58 00 58 58 00 58 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 00 00 58 00 58 58 58 58 58 00 58 00 58 00 58 00 58 58 00 58 58 58 58 00 00 58 58 00 58 58 00 00 58 00 00 58 58 00 58 58 58 00 00 58 58 58 58 00 00 58 00 58 58 00 00 00 58 00 58 58 00 58 58 58 00 58 58 58 00 58 00 58 00 58 00 58 00 00 00 00 00 58 00 58 58 58 58 58 00 00 58 00 58 00 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 58 00 58 00 00 00 58 00 00 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 00 00 00 58 58 00 58 00 58 00 00 58 00 00 58 58 00 00 58 00 00 58 00 58 00 58 58 00 58 58 58 00 00 00 58 00 58 58 58 00 00 00 00 00 58 00 58 00 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 00 00 58 58 00 00 58 58 58 00 58 00 00 58 00 00 00 00 58 00 58 00 58 58 00 58 00 00 00 00 58 00 00 58 58 00 58 58 58 58 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 00 00 58 00 00 00 58 58 58 58 58 58 58 00 58 58 00 00 58 00 00 00 58 00 58 58 58 58
*/
