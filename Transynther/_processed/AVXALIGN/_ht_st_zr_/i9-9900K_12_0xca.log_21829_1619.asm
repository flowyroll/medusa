.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xee46, %r12
nop
nop
nop
nop
nop
add $51373, %rdi
movups (%r12), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x5a6, %r8
nop
nop
nop
add $63362, %r15
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
add %r15, %r15
lea addresses_A_ht+0x15a6a, %r8
nop
nop
nop
nop
inc %rdx
mov (%r8), %r12w
nop
nop
nop
nop
nop
xor $9800, %r11
lea addresses_normal_ht+0x1ab2e, %rsi
lea addresses_WC_ht+0x9b06, %rdi
clflush (%rdi)
dec %r15
mov $39, %rcx
rep movsw
cmp %r8, %r8
lea addresses_WC_ht+0xf446, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
and $44583, %rdx
lea addresses_WT_ht+0xe846, %rsi
lea addresses_UC_ht+0x91c6, %rdi
clflush (%rdi)
nop
nop
nop
and $51316, %r11
mov $54, %rcx
rep movsl
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x1b866, %rsi
lea addresses_D_ht+0xec46, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $6, %rcx
rep movsw
nop
nop
and $56818, %rdi
lea addresses_WC_ht+0x1c04c, %rcx
nop
nop
nop
nop
add $46001, %rdi
movb (%rcx), %r12b
nop
nop
nop
nop
nop
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1b222, %rsi
lea addresses_normal+0x7b86, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $103, %rcx
rep movsq
nop
nop
nop
nop
xor $42981, %r9

// Store
lea addresses_US+0x1be46, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
xor %r12, %r12

// Store
lea addresses_UC+0x18c46, %rsi
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_D+0xa446, %rdi
nop
nop
nop
nop
nop
add $7118, %r12
vmovaps (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'44': 12, '36': 21123, '49': 692, '00': 2}
36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 49 36 36 36 36 36 49 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
