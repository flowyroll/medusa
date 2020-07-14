.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7a4f, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
nop
nop
and $54372, %r12
lea addresses_D_ht+0x192ef, %r9
nop
nop
nop
and $57132, %r13
mov (%r9), %rbx
nop
nop
add $65402, %rcx
lea addresses_D_ht+0xdf17, %r12
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
nop
nop
sub $59259, %r9
lea addresses_A_ht+0x1d9af, %rsi
lea addresses_D_ht+0x190ef, %rdi
clflush (%rsi)
nop
sub $36237, %rbp
mov $63, %rcx
rep movsw
nop
cmp $42734, %r9
lea addresses_WC_ht+0x198d5, %rsi
lea addresses_A_ht+0x101ef, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $9, %rcx
rep movsb
nop
cmp $39496, %r14
lea addresses_WC_ht+0x9ef, %rbx
nop
nop
nop
add %rbp, %rbp
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x61ef, %r9
nop
nop
cmp $4750, %rcx
mov (%r9), %r13w
xor $65006, %r13
lea addresses_A_ht+0xa62f, %rsi
nop
sub $63177, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x15291, %rsi
lea addresses_normal_ht+0x19e87, %rdi
nop
nop
sub %r13, %r13
mov $120, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x24af, %r14
nop
xor %rbx, %rbx
movups (%r14), %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
cmp $48291, %r12
lea addresses_WC_ht+0x63ef, %rbp
clflush (%rbp)
nop
nop
nop
nop
xor $2320, %rbx
movb (%rbp), %r13b
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x19caf, %rsi
lea addresses_WC_ht+0x18a07, %rdi
nop
nop
inc %r9
mov $86, %rcx
rep movsl
and $40041, %rcx
lea addresses_WC_ht+0x710b, %r14
nop
nop
nop
nop
nop
and $49644, %r9
mov (%r14), %bp
nop
nop
nop
xor $2883, %r14
lea addresses_D_ht+0x13def, %rsi
lea addresses_A_ht+0x19acf, %rdi
and $17713, %rbp
mov $77, %rcx
rep movsq
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Load
lea addresses_WT+0x14cfb, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
mov (%r10), %r11
nop
nop
mfence

// Store
lea addresses_D+0xeef, %rdx
nop
nop
nop
nop
nop
add $42447, %r8
movw $0x5152, (%rdx)
nop
nop
nop
add $38712, %r9

// Load
lea addresses_A+0x64ef, %rsi
nop
nop
nop
nop
inc %r11
mov (%rsi), %eax
nop
nop
nop
cmp $2397, %rsi

// Store
mov $0x5d10b00000000f0b, %r8
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0x826f, %r9
nop
nop
nop
inc %r10
movl $0x51525354, (%r9)
inc %rsi

// Faulty Load
lea addresses_A+0x91ef, %r11
nop
nop
nop
nop
sub $32308, %rax
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'45': 5, '46': 25, '48': 111, '00': 80, '44': 9, '47': 2}
45 48 48 00 00 48 48 00 48 48 48 00 48 48 48 00 48 48 00 46 00 00 00 44 48 48 48 48 48 48 00 00 48 46 00 00 47 48 00 48 00 00 48 48 46 48 00 00 48 48 00 46 46 48 48 00 00 00 48 48 48 48 00 48 00 00 00 47 48 00 00 48 48 48 48 00 46 00 48 48 00 00 48 48 48 00 00 00 46 48 48 48 44 48 00 44 48 48 00 00 00 00 48 00 00 00 48 48 46 00 48 48 00 00 48 46 48 48 48 48 48 48 00 46 00 48 45 48 48 48 46 48 48 46 48 48 00 48 44 46 48 00 44 00 46 48 44 44 48 48 00 48 00 00 00 00 00 00 48 48 48 48 48 48 00 48 00 46 46 00 00 48 48 46 45 48 48 48 48 00 00 46 00 00 48 48 48 45 00 00 48 48 48 48 48 00 48 00 00 48 00 48 00 00 48 00 00 48 45 48 46 48 48 46 46 48 44 46 48 00 48 48 46 46 00 48 44 48 00 00 46 48
*/
