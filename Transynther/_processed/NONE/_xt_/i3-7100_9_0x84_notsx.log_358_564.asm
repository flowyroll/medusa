.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x14fdc, %r8
clflush (%r8)
nop
nop
nop
nop
nop
cmp $50026, %r9
movb (%r8), %dl
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0xfa50, %rsi
nop
dec %rax
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x775c, %rsi
lea addresses_UC_ht+0x86dc, %rdi
add $42807, %r9
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r12
lea addresses_UC_ht+0x1ecdc, %r8
nop
nop
nop
nop
xor $63024, %rdx
mov (%r8), %r12
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1edec, %r12
nop
nop
nop
nop
nop
add $25153, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
xor $37195, %rcx
lea addresses_normal_ht+0x7e5c, %rsi
lea addresses_UC_ht+0xe75c, %rdi
nop
dec %r12
mov $42, %rcx
rep movsw
nop
nop
add %rax, %rax
lea addresses_normal_ht+0xdf5c, %rsi
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rsi), %rdi
and $12440, %r8
lea addresses_A_ht+0x17d0c, %rax
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %r9w
sub %rcx, %rcx
lea addresses_UC_ht+0x1220c, %rsi
lea addresses_WC_ht+0x1195c, %rdi
nop
add $38140, %rdx
mov $91, %rcx
rep movsl
nop
nop
nop
cmp $21320, %rax
lea addresses_WC_ht+0x1e5ec, %r9
inc %rsi
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
xor $25113, %r9
lea addresses_WC_ht+0xe5c, %rdx
nop
xor $27552, %r9
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x139ac, %rsi
lea addresses_WC_ht+0x18f5c, %rdi
nop
add %rax, %rax
mov $23, %rcx
rep movsq
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x1a95c, %rsi
lea addresses_D_ht+0x1395c, %rdi
clflush (%rsi)
nop
nop
nop
xor $34612, %r9
mov $25, %rcx
rep movsw
nop
nop
nop
cmp $5865, %rcx
lea addresses_D_ht+0x835c, %rsi
lea addresses_WT_ht+0x1034, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $43, %rcx
rep movsq
nop
nop
nop
nop
sub $3960, %rdx
lea addresses_A_ht+0x1875c, %r9
nop
nop
nop
xor $28519, %rax
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x775c, %rdx
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0x1045c, %rdx
nop
nop
nop
dec %rdi
movb $0x51, (%rdx)
inc %rcx

// Store
mov $0x70301f0000000739, %r13
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
and %r8, %r8

// Store
lea addresses_UC+0x175c, %rdx
nop
nop
nop
sub $60703, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
sub $32138, %rax

// Faulty Load
lea addresses_PSE+0x1cf5c, %rdi
cmp %r13, %r13
mov (%rdi), %ecx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 358}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
