.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x15832, %rdx
nop
nop
nop
nop
sub $62717, %r10
movb (%rdx), %r13b
nop
nop
dec %rbx
lea addresses_WC_ht+0x3532, %r11
nop
and $42219, %r10
mov (%r11), %r15d
nop
add $39387, %r13
lea addresses_normal_ht+0x4232, %r10
nop
nop
nop
nop
add %r11, %r11
mov (%r10), %r13w
nop
sub %r13, %r13
lea addresses_UC_ht+0x10aca, %r13
nop
nop
mfence
movb (%r13), %dl
nop
nop
nop
nop
cmp $38678, %r13
lea addresses_normal_ht+0x146f2, %rsi
lea addresses_A_ht+0x110b2, %rdi
nop
nop
and $22287, %rdx
mov $38, %rcx
rep movsl
nop
nop
and $41019, %r15
lea addresses_UC_ht+0x12903, %rdi
nop
nop
nop
nop
inc %rbx
movl $0x61626364, (%rdi)
nop
nop
dec %rcx
lea addresses_D_ht+0x93b6, %rcx
nop
nop
add $3445, %r13
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rdx
and %rcx, %rcx
lea addresses_D_ht+0x12b32, %rcx
nop
nop
nop
nop
nop
inc %r10
movw $0x6162, (%rcx)
add %rcx, %rcx
lea addresses_WT_ht+0x125e2, %r11
clflush (%r11)
nop
nop
sub $45729, %rdi
mov (%r11), %dx
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1d732, %rbx
dec %r8
mov (%rbx), %r11d
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0x17b2, %r13
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, (%r13)
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x1e692, %r10
nop
xor $29133, %rdi
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp $46113, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x6f2, %rbp
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
inc %rbx

// Faulty Load
mov $0x332, %r12
nop
nop
cmp %rcx, %rcx
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'46': 289}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
