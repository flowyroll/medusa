.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1a328, %rsi
nop
nop
inc %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
inc %r14
lea addresses_D_ht+0xe9c8, %rsi
lea addresses_UC_ht+0x2e28, %rdi
nop
nop
nop
nop
and $50167, %r11
mov $111, %rcx
rep movsw
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0xd7a8, %rcx
nop
nop
nop
nop
xor $9505, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
add $37575, %r11
lea addresses_D_ht+0x1bf88, %rdx
nop
and $3165, %rdi
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x3e48, %rsi
lea addresses_UC_ht+0x1658, %rdi
nop
and $17009, %r9
mov $112, %rcx
rep movsw
add %rax, %rax
lea addresses_A_ht+0x5070, %rcx
nop
nop
and $54273, %r14
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
xor $48963, %rdx
lea addresses_D_ht+0x10c67, %rsi
lea addresses_D_ht+0x3d28, %rdi
nop
and %r11, %r11
mov $110, %rcx
rep movsq
nop
sub $25648, %rcx
lea addresses_WC_ht+0x11b68, %rsi
nop
cmp %rax, %rax
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
sub $36341, %r14
lea addresses_D_ht+0x1be28, %rsi
lea addresses_WT_ht+0xfef, %rdi
clflush (%rdi)
mfence
mov $42, %rcx
rep movsw
nop
and %r9, %r9
lea addresses_normal_ht+0x15ea8, %rsi
lea addresses_WT_ht+0x18da8, %rdi
nop
nop
sub $38410, %r14
mov $16, %rcx
rep movsq
xor %rdx, %rdx
lea addresses_WT_ht+0x7f28, %rsi
lea addresses_D_ht+0x75a8, %rdi
add %r9, %r9
mov $120, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x18c68, %rdx
nop
dec %rdi
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r11
add $34764, %rdi
lea addresses_UC_ht+0x1b5a8, %rcx
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add $11821, %rsi
lea addresses_A_ht+0x36c0, %rsi
lea addresses_D_ht+0xa9a8, %rdi
nop
nop
xor $14441, %rax
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
add $32607, %rax
lea addresses_normal_ht+0x83a8, %rax
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rax), %si
nop
nop
add $47887, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
mov $0x828, %rcx
and $12945, %r14
mov (%rcx), %di
add $10943, %rdi

// Store
lea addresses_PSE+0x1be48, %r9
and $62613, %rbp
movl $0x51525354, (%r9)
nop
nop
sub $49630, %rcx

// Store
lea addresses_UC+0x1a6e4, %rbp
clflush (%rbp)
nop
cmp %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_normal+0x1b178, %rcx
nop
add %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rcx)
nop
cmp %r10, %r10

// Load
lea addresses_normal+0x125a8, %r10
nop
nop
nop
inc %rbp
mov (%r10), %r14w
nop
nop
nop
and $953, %rsi

// Store
lea addresses_D+0x19f78, %rcx
cmp $836, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_normal+0x125a8, %r10
nop
nop
nop
nop
sub $27795, %rdi
mov (%r10), %r9w
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'34': 218}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
