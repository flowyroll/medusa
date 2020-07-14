.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1de38, %rbx
nop
nop
nop
cmp %rdx, %rdx
mov (%rbx), %r11w
nop
add %rsi, %rsi
lea addresses_WT_ht+0x6cd2, %r9
nop
nop
nop
cmp $43483, %rbp
movb (%r9), %r8b
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x18da, %rsi
lea addresses_normal_ht+0x421a, %rdi
nop
nop
add %r9, %r9
mov $100, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WC_ht+0x16dda, %r9
clflush (%r9)
nop
nop
nop
and %rdx, %rdx
movb $0x61, (%r9)
nop
nop
sub $26186, %rcx
lea addresses_WT_ht+0x172da, %rbx
cmp $42692, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
and $46068, %r8
lea addresses_WT_ht+0xc8da, %r8
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r8)
and $17065, %rsi
lea addresses_normal_ht+0x7a5a, %rbx
nop
nop
nop
nop
add $39997, %rcx
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x3342, %rsi
nop
nop
and %r9, %r9
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
sub $24475, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi

// Store
mov $0x1958670000000cba, %r15
and %r13, %r13
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and $56824, %rcx

// Store
lea addresses_D+0x630e, %r14
sub $30842, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
nop
xor %r15, %r15

// Store
lea addresses_A+0x11d7a, %r13
nop
nop
dec %rax
movb $0x51, (%r13)
nop
nop
nop
and $38426, %r14

// Faulty Load
lea addresses_WT+0x1dcda, %rcx
nop
nop
nop
nop
nop
add %r14, %r14
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 2}
39 39
*/
