.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c7f8, %rcx
clflush (%rcx)
nop
nop
nop
and $56164, %rdx
movl $0x61626364, (%rcx)
nop
and %r15, %r15
lea addresses_WT_ht+0x1180, %r14
nop
nop
nop
nop
nop
add $9618, %r8
movb (%r14), %dl
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x8e18, %rax
nop
nop
nop
xor $62868, %r15
mov (%rax), %dx
nop
cmp $1219, %rdx
lea addresses_WT_ht+0x12a18, %rcx
cmp $42594, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x102fc, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rax)
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x2d28, %r14
nop
xor %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x16878, %rcx
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
cmp $42772, %rdx
lea addresses_D_ht+0x4858, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rbp, %rbp
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x15bf8, %rsi
lea addresses_D_ht+0xbec8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbp, %rbp
mov $119, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1c998, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdx), %r14d
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x478, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x7c50, %rsi
lea addresses_WT+0x5f58, %rdi
nop
sub $36783, %r8
mov $110, %rcx
rep movsb
and $6129, %rdx

// Store
lea addresses_normal+0x1d215, %rdi
cmp %r13, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
dec %rcx

// Store
mov $0x768, %rdx
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
add $44592, %rdi

// Store
lea addresses_normal+0x6778, %r8
nop
add $43398, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r8)
nop
xor $53825, %r13

// Faulty Load
lea addresses_A+0xd778, %rcx
clflush (%rcx)
nop
nop
cmp %rdx, %rdx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 160}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
