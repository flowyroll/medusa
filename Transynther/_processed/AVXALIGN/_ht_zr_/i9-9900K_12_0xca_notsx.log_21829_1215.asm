.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xc09f, %rsi
lea addresses_WC_ht+0x40ae, %rdi
nop
nop
nop
cmp $49493, %rdx
mov $121, %rcx
rep movsb
nop
sub %r12, %r12
lea addresses_D_ht+0x117e5, %rax
nop
nop
and $63760, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
sub $32266, %rdx
lea addresses_A_ht+0x12d56, %rsi
nop
nop
xor $43669, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x2bae, %r10
nop
nop
sub $11261, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x1b22e, %rdx
nop
nop
inc %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
cmp $1311, %rdx
lea addresses_A_ht+0x187ae, %r10
nop
nop
xor %rdi, %rdi
movb $0x61, (%r10)
nop
xor %rdx, %rdx
lea addresses_A_ht+0xed76, %rsi
lea addresses_A_ht+0xd04a, %rdi
clflush (%rsi)
nop
xor %r11, %r11
mov $1, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x120ae, %rsi
lea addresses_UC_ht+0x177ae, %rdi
clflush (%rsi)
nop
nop
nop
inc %rdx
mov $116, %rcx
rep movsl
nop
nop
and $2840, %rdi
lea addresses_normal_ht+0x182ae, %r11
nop
nop
nop
nop
cmp $27094, %rax
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x34a6, %r11
nop
inc %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%r11)
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0xb42e, %rsi
lea addresses_UC_ht+0x6468, %rdi
sub $54590, %r11
mov $23, %rcx
rep movsq
nop
nop
nop
nop
nop
and $55182, %rdi
lea addresses_A_ht+0x123c, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub $29646, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1ecce, %rsi
lea addresses_UC_ht+0x7fae, %rdi
clflush (%rdi)
nop
nop
nop
add $34750, %rdx
mov $30, %rcx
rep movsw
nop
nop
nop
lfence
lea addresses_normal_ht+0x1e22e, %rsi
nop
xor $54061, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x16fae, %rdx
sub $32655, %r12
movw $0x6162, (%rdx)
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x6dbdea00000006ee, %rcx
xor $14710, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
inc %rcx

// Faulty Load
lea addresses_WC+0xf0ae, %rbp
cmp %rcx, %rcx
movaps (%rbp), %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'48': 3953, '45': 13, '44': 13719, '00': 4144}
44 44 44 44 48 44 44 44 00 44 00 44 44 44 48 00 44 44 44 00 44 44 48 44 48 44 48 44 48 44 44 48 44 44 00 00 44 00 44 44 48 48 44 44 48 00 48 00 44 44 00 00 44 44 48 44 00 48 44 00 44 48 44 44 00 48 00 44 44 48 44 44 48 00 44 48 44 44 44 44 00 48 44 48 00 00 44 48 44 44 00 44 00 48 44 48 44 44 44 44 00 44 44 44 00 44 44 48 44 44 44 48 00 48 44 44 44 44 44 44 44 48 00 44 44 48 44 00 00 44 44 48 44 44 00 48 44 48 44 44 44 48 44 44 44 48 00 48 44 48 44 44 44 00 44 44 48 44 48 00 44 44 00 44 44 44 00 44 44 44 44 00 00 44 44 00 44 44 00 44 44 44 44 44 00 00 44 44 44 48 00 48 00 44 44 44 44 00 44 00 44 00 44 00 44 00 44 44 44 00 00 48 44 44 44 44 44 48 44 00 44 48 44 44 00 48 44 44 48 44 44 44 44 44 48 00 44 48 48 44 00 48 00 44 44 48 44 00 00 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 48 44 44 00 48 44 44 48 48 44 00 44 44 44 48 44 48 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 44 48 44 44 00 44 00 44 44 44 44 48 44 44 00 48 00 00 44 44 44 44 48 44 44 44 44 44 44 48 44 44 48 44 48 44 48 44 44 48 44 48 44 44 00 44 44 44 48 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 48 44 44 44 48 44 00 44 48 44 44 48 44 48 44 44 48 44 44 00 44 44 44 44 00 48 44 44 48 44 44 48 44 44 44 44 48 00 44 44 44 48 44 00 44 00 00 48 00 44 44 48 44 44 44 48 00 44 44 48 44 48 44 44 44 48 44 44 00 44 44 00 00 48 48 00 44 44 44 44 00 44 44 44 44 00 00 44 48 44 44 44 44 00 00 44 48 44 44 00 48 44 44 00 44 44 44 48 44 44 44 00 44 48 44 48 44 44 44 00 44 48 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 48 00 44 44 44 48 44 48 44 44 44 44 48 00 44 44 48 44 44 00 00 44 48 00 00 44 48 44 44 00 48 44 48 00 44 44 48 44 44 00 00 00 00 00 00 44 44 00 44 48 00 48 44 44 44 44 00 44 44 48 00 48 00 44 44 48 44 44 44 44 44 44 48 00 00 00 44 44 44 44 00 44 48 00 44 48 44 44 44 44 44 48 44 48 00 44 48 44 00 44 44 44 44 44 44 44 44 00 00 48 00 44 44 44 44 00 00 48 44 44 00 44 48 00 44 44 44 44 48 44 44 48 44 00 44 44 44 44 48 00 44 44 44 48 44 44 44 44 00 44 44 00 44 44 48 44 44 48 44 48 48 44 44 44 00 44 48 44 48 44 48 44 44 44 00 44 44 44 44 48 44 44 44 00 44 44 44 44 48 44 00 44 44 00 44 48 44 44 44 48 44 44 48 00 00 00 44 44 44 48 44 44 48 44 44 48 00 44 44 44 48 44 44 00 44 44 00 48 44 48 00 44 48 44 48 00 44 44 48 44 44 44 44 48 44 44 48 44 00 44 44 00 00 00 44 44 00 44 48 44 00 44 44 44 44 48 44 44 44 48 44 44 44 44 44 48 44 44 00 00 44 48 44 44 44 44 44 00 44 44 00 44 48 00 44 00 44 48 44 44 44 44 44 44 44 00 44 44 44 44 48 44 44 44 44 00 44 00 00 48 44 00 44 44 44 44 44 44 48 44 44 44 00 44 48 44 44 00 44 44 44 44 44 48 44 44 48 44 00 00 44 44 48 44 44 44 48 44 48 44 44 44 00 44 44 44 00 48 44 44 44 44 48 44 44 44 48 44 44 00 44 48 44 44 00 00 44 00 44 44 48 44 44 48 00 44 48 44 44 00 00 44 44 00 00 44 00 48 44 48 44 44 44 00 00 00 44 44 44 48 44 44 00 00 44 48 00 44 48 44 44 44 44 44 44 00 48 44 48 00 44 44 48 44 44 00 44 44 44 00 00 44 00 00 00 44 44 00 00 44 44 48 00 00 44 00 44 48 00 44 48 44 44 44 44 00 00 44 44 44 00
*/
