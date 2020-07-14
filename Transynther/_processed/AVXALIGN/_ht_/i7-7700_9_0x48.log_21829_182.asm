.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a6d7, %rbx
nop
nop
and $16733, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm3, (%rbx)
nop
nop
nop
nop
nop
xor $16579, %r10
lea addresses_A_ht+0x61ff, %r14
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r14)
mfence
lea addresses_WT_ht+0xd54f, %rsi
lea addresses_D_ht+0x664f, %rdi
nop
nop
nop
nop
add $51774, %r14
mov $75, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xc14f, %rbx
nop
cmp %r15, %r15
movw $0x6162, (%rbx)
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x5407, %rcx
add %rdi, %rdi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
dec %r15
lea addresses_WT_ht+0x1e8f1, %r10
nop
nop
nop
xor $62684, %rsi
mov (%r10), %cx
inc %rdi
lea addresses_A_ht+0x1364f, %r10
sub $54804, %rsi
mov (%r10), %bx
nop
nop
nop
nop
add $64333, %r14
lea addresses_UC_ht+0x650f, %rdi
nop
nop
lfence
movb $0x61, (%rdi)
and $23639, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_WC+0x1954f, %rcx
add $1588, %r12
movaps (%rcx), %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'49': 13924, '46': 7905}
49 49 46 49 49 49 46 49 46 49 49 49 49 49 46 49 46 46 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 46 46 49 49 49 46 46 49 46 46 46 49 46 49 49 49 49 49 46 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 46 49 46 49 46 49 46 46 49 49 46 46 46 49 49 46 49 49 46 49 46 49 49 46 46 49 49 49 46 49 46 46 46 46 46 49 46 49 49 49 49 49 49 46 49 46 49 46 46 49 49 49 46 49 46 49 46 49 46 49 49 49 46 49 46 46 49 49 49 49 46 49 49 46 46 49 49 49 46 46 49 46 49 46 49 46 46 46 49 49 49 49 49 49 46 46 46 49 46 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 49 46 49 46 49 46 46 46 49 46 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 49 49 46 46 49 46 49 49 49 46 49 46 46 46 49 46 49 46 49 46 49 46 49 46 49 46 49 49 49 49 49 49 46 46 49 46 46 49 49 49 49 49 46 46 46 46 46 49 49 46 46 49 46 49 49 49 49 49 49 46 46 49 49 49 46 46 46 49 49 49 46 46 46 49 46 46 46 49 46 46 49 46 49 46 46 46 49 49 49 46 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 46 49 49 49 49 46 49 46 49 46 49 46 49 46 49 49 49 46 49 46 49 46 49 46 49 46 49 46 49 49 49 49 49 46 46 49 46 49 49 46 49 46 49 49 46 49 46 46 49 49 49 46 46 46 49 46 46 49 49 46 46 49 49 49 49 49 49 46 49 49 49 46 49 46 49 46 49 46 49 46 49 49 49 49 49 49 49 49 49 46 49 49 46 49 46 49 46 49 46 46 49 49 46 49 46 49 46 46 49 49 49 46 49 49 49 49 46 49 46 49 49 49 46 49 49 46 46 46 49 46 49 46 49 49 46 46 49 46 49 49 49 49 49 46 49 46 49 49 49 49 49 49 46 49 46 49 46 49 49 49 46 49 46 49 46 49 46 46 49 46 49 49 46 49 49 49 46 49 49 49 49 46 46 46 49 49 49 46 49 46 49 49 46 49 46 49 46 49 49 49 49 49 49 49 46 46 49 46 49 46 49 49 49 46 49 46 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 46 46 46 46 49 49 46 49 49 46 49 49 46 46 49 49 49 46 46 46 49 46 49 46 49 49 49 49 46 49 46 49 49 49 49 49 49 46 49 46 46 49 46 46 49 46 46 46 49 46 49 49 46 49 46 49 49 49 49 46 46 46 46 49 49 46 49 46 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 46 46 49 49 46 49 49 46 49 49 49 46 46 49 49 46 49 49 46 49 49 46 49 49 46 46 49 46 49 46 46 49 49 49 49 49 49 46 49 49 49 49 46 49 46 49 46 46 46 49 49 49 49 49 46 49 46 46 49 49 49 49 49 46 49 46 49 46 49 46 49 46 46 46 49 49 49 46 49 46 49 46 49 49 46 49 46 49 46 49 46 49 49 46 49 49 49 49 46 49 46 46 49 49 46 49 49 49 49 49 46 49 49 49 49 49 46 46 49 46 46 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 46 49 46 49 49 46 49 46 49 46 49 46 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 46 46 49 46 46 49 46 49 46 49 49 49 46 49 46 46 46 49 46 49 49 49 49 49 46 46 49 49 46 46 49 49 46 49 49 49 49 49 46 46 46 49 49 49 49 46 49 46 49 46 49 46 49 46 49 46 46 49 49 49 49 46 49 46 49 49 49 46 46 46 46 49 49 46 49 46 49 46 46 49 46 49 49 46 49 46 49 46 46 49 49 46 46 46 46 49 46 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 49 46 49 46 49 46 49 46 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 46 49 49 49 49 46 49 46 49 46 49
*/
