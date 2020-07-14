.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3743, %rsi
lea addresses_D_ht+0x1c383, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $26, %rcx
rep movsb
and $18871, %rsi
lea addresses_normal_ht+0x17e43, %rsi
lea addresses_WC_ht+0xba83, %rdi
nop
nop
nop
nop
dec %r10
mov $42, %rcx
rep movsq
nop
nop
nop
nop
add $14128, %rdi
lea addresses_WC_ht+0x1bf53, %rsi
lea addresses_D_ht+0x1ece3, %rdi
clflush (%rsi)
nop
nop
nop
cmp $17540, %r13
mov $105, %rcx
rep movsq
nop
nop
add $26343, %r10
lea addresses_WC_ht+0x12e83, %rdi
nop
nop
nop
cmp %rbx, %rbx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
and $10532, %rcx
lea addresses_WC_ht+0x877a, %r11
nop
nop
nop
sub $7953, %rdi
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x14163, %rbx
nop
nop
nop
nop
nop
and $35042, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%rbx)
nop
add $55241, %r11
lea addresses_WT_ht+0x15483, %rsi
lea addresses_WC_ht+0x19343, %rdi
nop
nop
sub %rbx, %rbx
mov $124, %rcx
rep movsb
sub $60345, %r11
lea addresses_WC_ht+0x8783, %rsi
lea addresses_A_ht+0x1e623, %rdi
clflush (%rdi)
nop
nop
nop
sub $46318, %rbx
mov $73, %rcx
rep movsl
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xa59b, %rsi
lea addresses_UC_ht+0x15263, %rdi
nop
cmp $26929, %r14
mov $70, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xf683, %r14
nop
sub $32752, %r10
mov (%r14), %r11w
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx

// Store
lea addresses_RW+0x17843, %r10
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r10)
sub $60474, %rax

// Store
mov $0x24b6370000000a83, %r12
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
xor $35942, %r8

// Store
lea addresses_normal+0x1ce83, %rax
and $30325, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)

// Exception!!!
nop
nop
mov (0), %r9
nop
inc %r15

// Store
lea addresses_WC+0xf683, %r15
cmp $27415, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movaps %xmm1, (%r15)
xor $10817, %r15

// Faulty Load
lea addresses_A+0x18683, %r15
nop
nop
nop
and %rcx, %rcx
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'58': 20246}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
