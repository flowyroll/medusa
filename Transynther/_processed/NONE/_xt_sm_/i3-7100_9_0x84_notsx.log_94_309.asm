.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x924e, %r15
sub %r8, %r8
movl $0x61626364, (%r15)
nop
nop
nop
dec %rax
lea addresses_A_ht+0x10ace, %rsi
lea addresses_D_ht+0x474e, %rdi
nop
nop
and $48563, %rax
mov $126, %rcx
rep movsl
and %r15, %r15
lea addresses_D_ht+0x1444e, %rcx
nop
nop
nop
add $19154, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
and $0xffffffffffffffc0, %rcx
movaps %xmm7, (%rcx)
mfence
lea addresses_UC_ht+0x167ae, %rsi
lea addresses_WT_ht+0xde8e, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $52, %rcx
rep movsq
nop
nop
dec %r15
lea addresses_WT_ht+0x1bba6, %r8
nop
nop
xor %rax, %rax
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
sub $57745, %rsi
lea addresses_WT_ht+0x7a8e, %rcx
nop
nop
nop
nop
nop
dec %r15
movb (%rcx), %al
nop
nop
nop
nop
add $18766, %rsi
lea addresses_WC_ht+0xc51e, %rsi
lea addresses_D_ht+0x344e, %rdi
and %rdx, %rdx
mov $95, %rcx
rep movsb
nop
add $60102, %rdx
lea addresses_WT_ht+0x1c84e, %r9
clflush (%r9)
nop
xor $30067, %r15
movb (%r9), %cl
nop
and %rdx, %rdx
lea addresses_D_ht+0x128ee, %r9
nop
add $31422, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp $52534, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0x2556c0000000b18, %r14
nop
nop
nop
nop
add $26302, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %rsi
dec %rax

// Store
lea addresses_normal+0xdc4e, %r8
nop
nop
nop
nop
inc %rax
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
xor $17039, %rsi

// Load
mov $0x8be, %rsi
nop
nop
nop
xor %rcx, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r14
nop
xor $31728, %r14

// Store
lea addresses_WC+0x93ce, %rdi
nop
nop
nop
xor $29709, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%rdi)
sub $17549, %rsi

// Faulty Load
lea addresses_normal+0xdc4e, %r14
nop
nop
nop
cmp %r11, %r11
mov (%r14), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'52': 94}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
