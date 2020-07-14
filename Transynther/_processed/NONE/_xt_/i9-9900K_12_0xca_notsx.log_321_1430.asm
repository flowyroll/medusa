.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xaad5, %r9
nop
nop
nop
nop
nop
and $14898, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
and $3167, %r13
lea addresses_WT_ht+0x11c4, %rsi
lea addresses_WC_ht+0x1ec0e, %rdi
nop
nop
nop
add $61424, %r13
mov $4, %rcx
rep movsq
nop
nop
nop
add $62120, %rbx
lea addresses_A_ht+0x1a4b6, %r9
nop
xor $45874, %rcx
mov (%r9), %di
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x4aae, %rsi
lea addresses_UC_ht+0x16706, %rdi
nop
nop
and %r8, %r8
mov $118, %rcx
rep movsw
nop
xor $35162, %rcx
lea addresses_D_ht+0x934c, %rsi
lea addresses_UC_ht+0x16a6f, %rdi
add %r9, %r9
mov $91, %rcx
rep movsl
and %rbx, %rbx
lea addresses_WC_ht+0x1294e, %r9
nop
nop
nop
inc %r8
movw $0x6162, (%r9)
nop
and $17678, %rbx
lea addresses_A_ht+0x12d4e, %rsi
nop
add %rax, %rax
movb $0x61, (%rsi)
nop
lfence
lea addresses_normal_ht+0x2e9e, %r8
nop
sub $743, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x5c0e, %rcx
nop
nop
nop
nop
nop
add $44046, %rsi
movb (%rcx), %r13b
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x13d4e, %rsi
lea addresses_WT_ht+0x16e4e, %rdi
nop
lfence
mov $41, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x17d1e, %rsi
lea addresses_UC_ht+0x654e, %rdi
add %rax, %rax
mov $61, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $63061, %r13
lea addresses_normal_ht+0x288e, %rax
nop
nop
nop
nop
nop
dec %rdi
mov (%rax), %r13
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x1a14e, %rsi
nop
cmp $24792, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x274e, %r8
clflush (%r8)
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r8)
nop
add %rsi, %rsi
lea addresses_D_ht+0x534e, %rdi
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x88ba, %rbp
nop
mfence
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0xc44e, %r13
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r13)
nop
nop
sub %r13, %r13

// Store
lea addresses_UC+0xa14e, %r8
nop
nop
nop
inc %rbp
movl $0x51525354, (%r8)
nop
and $38141, %rbp

// Store
lea addresses_A+0x1ad4e, %r14
nop
cmp %rbp, %rbp
movl $0x51525354, (%r14)
nop
nop
nop
nop
sub %rdi, %rdi

// REPMOV
lea addresses_WT+0xb6ae, %rsi
lea addresses_RW+0x8787, %rdi
sub $15323, %r13
mov $5, %rcx
rep movsl
nop
dec %r13

// Store
mov $0x2be592000000007b, %rbp
nop
nop
nop
nop
nop
cmp %r8, %r8
movl $0x51525354, (%rbp)

// Exception!!!
nop
nop
mov (0), %r9
sub %r14, %r14

// Store
lea addresses_A+0xf54e, %rsi
nop
cmp $45879, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rsi)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0xa64e, %rdi
nop
nop
dec %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_A+0x1ad4e, %r8
dec %r9
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'35': 321}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
