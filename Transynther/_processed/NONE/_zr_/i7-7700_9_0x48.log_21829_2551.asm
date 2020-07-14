.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14611, %r8
nop
nop
nop
nop
nop
xor $43614, %rsi
movb (%r8), %r10b
nop
nop
nop
nop
nop
sub $62446, %rax
lea addresses_UC_ht+0x13839, %r14
add $49909, %rcx
movl $0x61626364, (%r14)
xor %rbx, %rbx
lea addresses_WC_ht+0x24b9, %rsi
lea addresses_D_ht+0x4b9, %rdi
nop
inc %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0xeb9, %rcx
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x18d79, %r8
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
nop
nop
nop
nop
xor $6984, %r14
lea addresses_A_ht+0x11611, %r14
nop
nop
nop
inc %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add $43182, %r14
lea addresses_normal_ht+0x1e4b9, %rsi
lea addresses_UC_ht+0x1ab9, %rdi
cmp %r8, %r8
mov $71, %rcx
rep movsw
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x10ab9, %r10
nop
nop
nop
sub %rax, %rax
movb (%r10), %cl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x132b9, %rsi
lea addresses_D_ht+0x4ab9, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $75, %rcx
rep movsq
nop
nop
nop
nop
and $5055, %r8
lea addresses_D_ht+0x10c99, %rsi
lea addresses_WT_ht+0x11429, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $45453, %rbx
lea addresses_normal_ht+0x12739, %rsi
lea addresses_WC_ht+0x1a279, %rdi
clflush (%rdi)
nop
nop
cmp %rbx, %rbx
mov $42, %rcx
rep movsl
nop
nop
sub $45818, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_UC+0x2ab9, %r10
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
inc %rcx

// Store
lea addresses_UC+0x18b39, %rdx
clflush (%rdx)
nop
nop
nop
and $32761, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x2ab9, %r12
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovaps %ymm4, (%r12)
nop
nop
nop
nop
sub $25587, %rax

// Store
lea addresses_A+0x17b59, %rax
nop
nop
nop
nop
nop
sub $49498, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
and %r12, %r12

// Faulty Load
lea addresses_UC+0x2ab9, %r8
nop
nop
inc %rcx
movups (%r8), %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
