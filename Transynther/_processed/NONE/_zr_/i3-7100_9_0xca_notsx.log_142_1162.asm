.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4475, %rsi
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x1d36d, %rbx
nop
nop
nop
nop
nop
xor %r9, %r9
mov (%rbx), %r15d
cmp %r14, %r14
lea addresses_UC_ht+0x1c92d, %rsi
nop
nop
nop
and $6074, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rsi)
and $20181, %r15
lea addresses_UC_ht+0x1428d, %rbx
nop
xor %r15, %r15
mov (%rbx), %di
nop
nop
nop
xor $48776, %rbx
lea addresses_WC_ht+0x1d98d, %r9
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
sub $30928, %r9
lea addresses_D_ht+0x1bf95, %rdi
nop
nop
sub $52937, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdi)
cmp %r14, %r14
lea addresses_D_ht+0x16a8d, %rdi
nop
inc %rbx
movb (%rdi), %r10b
nop
nop
nop
xor $13919, %rbx
lea addresses_UC_ht+0x8448, %r10
nop
xor %r15, %r15
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
sub %r10, %r10
lea addresses_WC_ht+0x920d, %rsi
lea addresses_WT_ht+0x5b59, %rdi
xor $43144, %r10
mov $12, %rcx
rep movsw
nop
and %r10, %r10
lea addresses_WC_ht+0x1178d, %rsi
nop
sub %r15, %r15
movb (%rsi), %bl
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi

// Store
mov $0x4614760000000fd9, %r9
clflush (%r9)
nop
dec %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%r9)
and %rcx, %rcx

// Store
mov $0xdcd, %rcx
clflush (%rcx)
nop
sub $56515, %r11
movl $0x51525354, (%rcx)
cmp $3379, %r9

// Store
lea addresses_D+0x1078d, %rcx
nop
nop
dec %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)

// Exception!!!
mov (0), %r11
nop
nop
nop
nop
nop
xor $4055, %rdi

// Store
lea addresses_US+0x5bd3, %r9
nop
nop
nop
nop
nop
cmp $13550, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
nop
nop
inc %r13

// Faulty Load
lea addresses_D+0x1078d, %r9
clflush (%r9)
sub %rcx, %rcx
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 3, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 142}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
