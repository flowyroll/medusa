.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11bf2, %r10
nop
sub $27605, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x5c9d, %rcx
nop
nop
sub $8869, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x1ea67, %rcx
sub $824, %rdx
mov (%rcx), %r10w
nop
nop
nop
nop
add $32209, %rbp
lea addresses_D_ht+0x116e7, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm1
movups %xmm1, (%rbp)
nop
nop
add $38099, %r10
lea addresses_WC_ht+0xdfc3, %rsi
lea addresses_normal_ht+0xfae7, %rdi
nop
nop
nop
nop
sub $17667, %r10
mov $126, %rcx
rep movsq
nop
cmp $38712, %rsi
lea addresses_normal_ht+0x11ae7, %rbp
nop
nop
nop
add $23964, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x8efb, %r10
nop
nop
sub %rsi, %rsi
mov (%r10), %ecx
nop
nop
nop
nop
add $54922, %rbp
lea addresses_A_ht+0x1a97f, %rsi
lea addresses_UC_ht+0x7883, %rdi
clflush (%rsi)
nop
nop
nop
and $59767, %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xea4a, %rsi
lea addresses_normal_ht+0x9fe7, %rdi
nop
nop
nop
cmp $17069, %rbp
mov $100, %rcx
rep movsq
nop
xor %rax, %rax
lea addresses_normal_ht+0xb927, %rsi
lea addresses_D_ht+0x1e6e7, %rdi
nop
nop
nop
nop
add $9181, %rdx
mov $27, %rcx
rep movsq
nop
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x1cdff, %rbx
nop
nop
nop
inc %r10
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
inc %r10
lea addresses_D_ht+0xb6e7, %rbx
nop
and %rsi, %rsi
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rbp
nop
cmp $6131, %rbp
lea addresses_WT_ht+0x19867, %rcx
nop
nop
nop
sub $4157, %rsi
movb $0x61, (%rcx)
nop
xor $34330, %rax
lea addresses_D_ht+0xbb5, %rsi
lea addresses_A_ht+0x10c67, %rdi
nop
nop
xor %rax, %rax
mov $52, %rcx
rep movsq
nop
nop
nop
sub $26199, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0x11ee7, %rbp
inc %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Load
mov $0x79, %rdx
nop
add %rdi, %rdi
mov (%rdx), %bx
nop
nop
nop
nop
xor $30645, %rdi

// Store
lea addresses_RW+0x6fbf, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
nop
sub $53208, %rdx

// Load
lea addresses_WC+0x18ce7, %r11
nop
cmp %rdx, %rdx
mov (%r11), %ebp
nop
nop
nop
add $11943, %r15

// Store
lea addresses_normal+0x36e7, %rbx
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rbx)
nop
and %r11, %r11

// Faulty Load
lea addresses_normal+0x36e7, %rdi
sub $55339, %r9
mov (%rdi), %r11w
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'58': 9347}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
