.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x863f, %r11
nop
xor $32762, %r12
mov (%r11), %r8
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x11e3f, %rsi
lea addresses_A_ht+0xb77f, %rdi
nop
nop
nop
and %r13, %r13
mov $76, %rcx
rep movsl
cmp %r11, %r11
lea addresses_normal_ht+0x9506, %r8
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
mfence
lea addresses_A_ht+0x1ea3f, %r12
nop
nop
nop
nop
nop
inc %r9
mov (%r12), %r13d
nop
nop
nop
nop
nop
add $37550, %rcx
lea addresses_UC_ht+0x1cd09, %r8
clflush (%r8)
nop
nop
nop
nop
sub $32960, %rsi
mov (%r8), %r11d
and %r8, %r8
lea addresses_A_ht+0x2eff, %r11
nop
nop
add $5127, %rdi
mov (%r11), %rsi
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x120bf, %rsi
lea addresses_A_ht+0x187f, %rdi
clflush (%rsi)
nop
nop
and %r8, %r8
mov $79, %rcx
rep movsq
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x1ef7, %rsi
lea addresses_D_ht+0xf03f, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $101, %rcx
rep movsw
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1787f, %rdi
sub %rsi, %rsi
vmovups (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
nop
sub $34533, %rdi
lea addresses_A_ht+0x1347, %rdi
clflush (%rdi)
nop
nop
nop
and %r8, %r8
mov (%rdi), %r11
nop
sub $10446, %r13
lea addresses_A_ht+0xf6df, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $28089, %r12
movb (%rsi), %cl
nop
nop
nop
sub $18234, %r12
lea addresses_UC_ht+0x6cbf, %rsi
lea addresses_UC_ht+0x1023f, %rdi
nop
nop
nop
and %r11, %r11
mov $63, %rcx
rep movsw
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xd9af, %rdi
nop
nop
nop
nop
and %r12, %r12
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
xor $42398, %rdi
lea addresses_WC_ht+0x823f, %r8
nop
nop
nop
dec %r11
mov (%r8), %r9d
nop
nop
nop
nop
and $53123, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Load
mov $0xe3f, %rcx
and $26478, %rdi
mov (%rcx), %rax
nop
sub $8806, %r12

// Store
mov $0xf, %r12
cmp %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovaps %ymm7, (%r12)
nop
nop
nop
nop
dec %rcx

// Store
mov $0xe3f, %rax
nop
nop
nop
nop
xor $4797, %rdx
movw $0x5152, (%rax)
nop
nop
nop
add %rcx, %rcx

// Faulty Load
mov $0xe3f, %rbx
nop
nop
nop
nop
xor %rcx, %rcx
vmovaps (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'44': 4, '08': 3, '49': 14663, '00': 7031, '48': 128}
00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 00 00 49 49 00 00 00 49 00 00 49 00 49 49 49 49 00 49 00 49 49 00 49 49 49 49 00 49 48 00 49 00 49 49 49 00 00 48 00 48 00 49 49 00 49 00 49 49 49 00 49 00 49 49 49 49 00 49 00 49 00 00 49 00 00 49 49 00 49 00 49 00 49 00 49 49 49 49 49 00 49 49 49 00 00 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 00 49 00 49 49 00 49 00 49 49 00 00 00 49 49 00 49 00 00 49 49 49 49 49 49 00 00 00 49 00 49 00 49 49 49 49 00 49 00 49 00 00 00 49 49 49 00 49 00 49 49 49 49 00 49 49 49 49 49 00 49 00 00 00 00 49 49 49 49 49 49 00 00 49 49 49 49 00 49 00 00 00 49 49 00 00 49 49 49 00 49 49 49 00 49 00 00 49 49 49 49 49 49 49 00 49 00 49 00 49 00 49 49 49 00 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 00 49 00 00 49 49 49 49 49 00 49 00 49 49 00 00 00 49 49 00 00 00 49 49 49 49 00 49 49 00 00 49 49 49 00 49 49 49 49 49 00 49 00 49 00 49 49 49 49 49 00 49 49 00 49 00 00 49 49 49 49 49 49 49 00 00 49 49 49 00 49 00 49 49 49 00 49 49 49 49 49 00 49 49 00 49 00 49 00 49 00 49 49 00 00 49 00 49 49 49 00 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 00 00 00 49 00 49 00 00 00 49 49 00 00 49 49 49 00 00 49 00 49 49 49 00 49 49 49 00 49 00 49 00 49 49 00 49 00 00 49 49 49 49 00 49 00 00 49 49 49 49 49 49 00 49 49 49 49 00 49 49 00 49 49 49 49 00 00 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 00 48 00 00 48 49 00 49 00 00 00 49 49 00 49 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 49 00 49 49 49 00 49 49 00 49 49 49 00 49 00 00 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 00 00 49 00 00 49 00 49 00 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 00 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 00 49 00 49 00 49 00 49 00 00 49 49 49 00 49 49 00 00 49 00 49 49 49 00 00 49 49 00 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 00 49 00 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 00 00 00 49 49 00 49 00 00 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 00 00 49 00 49 49 49 49 49 49 49 00 49 49 00 49 00 49 00 00 49 49 49 49 00 49 49 49 48 00 49 49 00 49 00 49 00 00 49 00 49 49 00 00 49 00 49 49 49 49 49 49 49 49 49 49 00 00 00 49 49 49 49 49 49 49 49 49 00 00 00 49 49 49 49 00 49 49 00 49 49 00 49 49 49 49 49 00 49 00 49 49 49 49 49 00 49 49 49 49 49 00 00 49 49 00 49 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 00 49 49 00 49 00 00 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 00 49 00 49 00 49 00 49 49 49 00 49 00 49 49 49 00 49 00 49 49 49 00 00 49 00 49 49 00 49 49 49 49 00 00 49 00 49 49 49 00 49 49 49 49 49 00 49 49 00 49 00 49 00 00 49 48 00 49 49 00 49 00 49 00 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 00 49 00 49 49 49 49 49 49 49 49 49 49 00 49 00 00 49 00 00 49 49 49 00 49 49 49 00 49 49 49 00 00 49 49 00 00 49 00
*/
