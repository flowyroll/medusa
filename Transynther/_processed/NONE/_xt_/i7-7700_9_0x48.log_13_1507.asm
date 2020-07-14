.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13c60, %rdx
clflush (%rdx)
nop
and %r11, %r11
movb (%rdx), %r8b
nop
nop
nop
add $4297, %r10
lea addresses_UC_ht+0x1376c, %r9
clflush (%r9)
sub %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0xc4e0, %r11
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x61, (%r11)
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x88e0, %rsi
lea addresses_WT_ht+0x13ce0, %rdi
nop
dec %rdx
mov $10, %rcx
rep movsq
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x148e0, %r10
nop
nop
nop
nop
nop
cmp $53682, %r9
mov (%r10), %edx
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x25f0, %r8
nop
nop
nop
nop
and %r14, %r14
mov (%r8), %r10d
nop
nop
add $46143, %r10
lea addresses_WT_ht+0xb060, %rdx
sub $25375, %r11
movb (%rdx), %r14b
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0xc9ce, %r11
dec %rax
movw $0x5152, (%r11)
nop
and %rdx, %rdx

// Load
lea addresses_RW+0xf0e0, %rcx
nop
nop
nop
xor %r15, %r15
mov (%rcx), %r12d
nop
nop
inc %rdx

// Store
lea addresses_PSE+0x9128, %rcx
xor $23848, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovaps %ymm2, (%rcx)
nop
nop
inc %r12

// Store
lea addresses_WT+0x9960, %rdx
nop
nop
nop
nop
nop
sub $33829, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdx)
nop
dec %rbx

// Faulty Load
lea addresses_RW+0xf0e0, %r11
nop
nop
nop
inc %rbx
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'32': 13}
32 32 32 32 32 32 32 32 32 32 32 32 32
*/
