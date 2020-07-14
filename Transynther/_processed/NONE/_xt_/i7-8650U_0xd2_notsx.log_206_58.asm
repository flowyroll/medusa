.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x134bf, %r12
nop
nop
nop
inc %r11
mov (%r12), %r14w
nop
nop
sub $36875, %r10
lea addresses_WC_ht+0x447f, %rsi
lea addresses_D_ht+0x1e3f, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $12983, %rbx
mov $110, %rcx
rep movsw
nop
nop
nop
xor $2344, %r12
lea addresses_D_ht+0x963f, %r14
nop
and $12149, %rdi
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0xb13f, %rsi
lea addresses_D_ht+0x7e3f, %rdi
nop
sub %r14, %r14
mov $104, %rcx
rep movsw
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x723f, %r11
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1e5d3, %rsi
lea addresses_WT_ht+0x8c9f, %rdi
nop
nop
nop
nop
dec %r10
mov $110, %rcx
rep movsl
nop
nop
sub $54138, %r14
lea addresses_UC_ht+0x14497, %rbx
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1a499, %r10
nop
nop
nop
sub $41694, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
cmp $15889, %rdi
lea addresses_A_ht+0x114e7, %r14
clflush (%r14)
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm5
vpextrq $1, %xmm5, %r10
nop
dec %r12
lea addresses_normal_ht+0xf33f, %rdi
inc %rcx
mov (%rdi), %r12d
nop
nop
and %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x9f3f, %r11
nop
nop
nop
inc %rcx
movb $0x51, (%r11)

// Exception!!!
nop
mov (0), %rbp
nop
nop
xor $60507, %rax

// REPMOV
lea addresses_normal+0x7e3f, %rsi
lea addresses_D+0x1bef, %rdi
nop
nop
inc %r8
mov $24, %rcx
rep movsw
nop
nop
nop
and $61512, %rsi

// Store
lea addresses_US+0x363f, %r8
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r8)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_D+0xa619, %r11
cmp $60413, %rdx
movb $0x51, (%r11)
nop
cmp $41648, %rbp

// Faulty Load
lea addresses_normal+0x7e3f, %rbp
add $48544, %r8
mov (%rbp), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'34': 206}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
