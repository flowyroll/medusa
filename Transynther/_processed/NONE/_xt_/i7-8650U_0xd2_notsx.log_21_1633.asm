.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b310, %r14
clflush (%r14)
nop
nop
cmp %r9, %r9
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
xor %r14, %r14
lea addresses_WC_ht+0xb280, %r9
nop
sub $2805, %r10
movw $0x6162, (%r9)
nop
and %r15, %r15
lea addresses_D_ht+0x5710, %r8
and %rax, %rax
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
and $51556, %r9
lea addresses_D_ht+0x11510, %rsi
lea addresses_normal_ht+0x17270, %rdi
nop
and %r8, %r8
mov $33, %rcx
rep movsw
nop
nop
nop
cmp $50671, %rax
lea addresses_A_ht+0x1c510, %rsi
lea addresses_A_ht+0x8510, %rdi
clflush (%rsi)
cmp $32488, %r8
mov $6, %rcx
rep movsw
nop
add $17490, %r14
lea addresses_WC_ht+0x15534, %rsi
lea addresses_D_ht+0x18d18, %rdi
nop
nop
dec %r14
mov $2, %rcx
rep movsw
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x12cc8, %rsi
nop
cmp $55099, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
xor $12834, %rcx
lea addresses_WT_ht+0x1e7b0, %r8
nop
nop
add $5126, %r14
movw $0x6162, (%r8)
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x14298, %rax
nop
nop
nop
nop
cmp $36841, %rdi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rdx
push %rsi

// Store
lea addresses_D+0x16510, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rsi)

// Exception!!!
nop
mov (0), %r11
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_normal+0x1c510, %rsi
nop
nop
nop
and %r15, %r15
mov (%rsi), %r12w
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rsi
pop %rdx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'34': 21}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
