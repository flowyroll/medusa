.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x281b, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %r14, %r14
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
add %rbp, %rbp
lea addresses_A_ht+0xc1ff, %rsi
lea addresses_UC_ht+0x1599b, %rdi
nop
nop
nop
nop
mfence
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0xf369, %rsi
lea addresses_D_ht+0x1959b, %rdi
nop
sub %r8, %r8
mov $113, %rcx
rep movsq
nop
nop
nop
add $13046, %r14
lea addresses_WT_ht+0x1435b, %r14
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
and $21431, %rax
lea addresses_normal_ht+0x1d99b, %rbp
add $25814, %rcx
mov (%rbp), %edx
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0xb41b, %rax
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rax)
cmp %rbp, %rbp
lea addresses_WT_ht+0xc19b, %rsi
lea addresses_WC_ht+0x17ddb, %rdi
nop
add $56529, %rbp
mov $95, %rcx
rep movsl
nop
nop
xor $30429, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x4ef3, %rsi
nop
nop
nop
nop
and %r10, %r10
movb $0x51, (%rsi)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_RW+0x695b, %rax
add $12062, %rcx
movb $0x51, (%rax)
nop
nop
add %rsi, %rsi

// Load
lea addresses_A+0x12c48, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r8), %eax
nop
xor $48778, %rax

// Store
lea addresses_D+0x1179b, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovntdq %ymm2, (%rbp)
nop
nop
nop
sub $57076, %r9

// Faulty Load
mov $0x2948d9000000019b, %r9
nop
nop
and $56658, %r8
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'45': 676, '00': 470, '49': 101, '47': 51}
45 00 49 45 45 00 45 45 45 45 45 45 49 45 45 00 45 45 00 00 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 00 45 00 49 45 00 49 00 00 45 00 00 45 49 45 45 00 45 00 00 00 00 45 45 45 00 00 00 45 49 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 00 45 45 45 00 45 00 45 00 00 00 00 45 45 00 45 00 00 45 45 00 00 00 45 45 45 00 49 45 00 45 45 00 45 45 00 45 00 45 47 00 45 00 45 45 45 45 45 00 00 00 45 45 49 00 00 49 00 45 00 00 00 45 47 45 45 00 00 00 00 45 45 00 00 49 00 45 45 45 00 00 49 00 45 00 00 45 45 45 45 00 45 00 45 49 00 45 49 45 45 45 00 45 45 00 00 45 49 49 00 00 45 45 47 45 45 00 00 45 45 45 45 45 00 45 49 45 00 00 45 00 00 45 45 45 47 45 45 45 00 49 45 45 45 45 45 45 00 49 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 00 45 00 49 45 47 00 45 49 00 45 45 00 00 45 45 45 00 45 00 49 00 00 45 45 45 45 00 00 49 00 45 00 47 45 49 00 00 00 45 45 45 45 45 00 49 45 47 00 45 45 00 45 00 45 00 00 45 45 45 45 00 45 00 45 45 45 47 00 45 45 00 45 00 45 00 45 00 00 00 45 45 49 45 45 45 45 00 45 00 00 45 00 00 45 45 00 49 45 45 00 45 45 47 00 00 00 00 45 00 00 00 45 45 00 45 45 45 47 45 45 45 45 49 45 45 45 00 45 45 45 47 00 45 45 45 00 45 45 00 00 45 45 45 00 00 00 45 45 00 45 45 00 00 00 00 00 45 45 49 45 45 00 00 45 00 00 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 00 00 45 00 00 45 00 00 45 45 45 00 45 45 00 45 45 45 49 45 00 00 00 45 45 00 00 00 49 49 00 00 49 00 45 00 45 45 49 00 00 00 49 49 00 45 45 45 45 45 45 00 45 00 45 45 00 49 00 00 45 45 00 45 00 45 45 45 45 00 00 47 45 45 45 00 45 45 45 45 00 00 00 45 45 45 49 00 45 45 47 00 45 45 45 45 45 45 49 00 45 00 47 00 00 00 00 45 45 00 45 45 47 45 45 45 49 49 00 49 45 45 00 49 00 45 00 49 45 45 49 00 45 45 00 45 00 00 49 00 45 00 45 00 45 47 45 49 47 00 45 00 45 47 00 45 45 45 49 00 45 00 00 45 45 49 45 45 00 00 49 00 45 45 45 45 45 45 49 47 45 49 00 45 45 45 45 45 45 45 45 45 49 45 45 00 00 47 00 45 49 00 45 00 45 45 00 45 45 00 00 00 00 00 45 45 45 45 49 45 00 00 49 00 00 45 49 45 45 47 45 45 45 00 45 45 45 00 45 45 45 00 00 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 47 00 00 00 00 45 45 45 47 00 45 45 45 00 45 45 00 45 49 45 45 49 45 00 00 45 45 45 45 45 45 00 00 45 45 00 00 00 45 45 00 00 45 45 45 45 00 45 45 00 45 00 00 47 00 45 45 45 00 00 00 45 45 47 45 45 00 00 00 47 45 45 47 45 45 49 49 45 00 00 45 00 00 45 00 49 45 45 45 45 45 00 45 45 00 00 49 00 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 47 49 00 00 49 45 00 00 45 47 00 00 49 45 00 00 45 45 49 49 45 00 49 45 00 45 49 45 47 45 00 00 45 45 00 45 47 45 00 00 45 45 47 49 00 00 00 45 00 45 45 45 00 45 45 00 45 45 00 00 00 45 49 45 45 45 00 00 00 45 45 45 00 45 47 45 00 45 45 00 45 00 45 00 45 49 45 45 00 00 45 45 45 45 47 00 00 45 47 00 00 49 45 45 00 45 00 45 47 45 00 00 45 49 45 45 45 45 45 45 45 45 00 49 45 45 00 00 45 00 00 45 00 45 00 45 49 00 45 45 45 00 45 45 45 45 49 00 45 00 00 45 47 49 45 45 49 45 00 45 00 00 45 00 45 45 00 00 00 00 00 45 45 45 45 00 00 45 45 45 49 49 00 45 49 00 45 45 00 45 45 00 45 45 45 00
*/
