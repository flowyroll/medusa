.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15717, %rax
clflush (%rax)
xor $2987, %r8
movb (%rax), %r11b
nop
nop
nop
nop
nop
xor $19004, %r11
lea addresses_UC_ht+0x1ac17, %rsi
lea addresses_A_ht+0x6657, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x129c7, %rax
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x14337, %rdi
nop
nop
xor %r8, %r8
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0xcef7, %rsi
lea addresses_D_ht+0xf417, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
mov $112, %rcx
rep movsw
nop
sub %rax, %rax
lea addresses_WT_ht+0x4b97, %rsi
lea addresses_normal_ht+0x1ec17, %rdi
nop
and %r13, %r13
mov $47, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xc267, %r11
clflush (%r11)
nop
nop
sub $13954, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x5417, %r13
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r13)
nop
nop
inc %r13
lea addresses_WT_ht+0x9417, %r8
nop
nop
xor %rbp, %rbp
mov (%r8), %r11d
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x1b417, %r13
nop
add %rsi, %rsi
mov (%r13), %ebp
nop
cmp $63206, %r11
lea addresses_A_ht+0x7577, %r8
nop
sub $59059, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r8
movntdq %xmm7, (%r8)
nop
nop
nop
nop
nop
cmp $21927, %rdi
lea addresses_normal_ht+0x5c47, %rax
clflush (%rax)
nop
xor $28778, %rdi
movw $0x6162, (%rax)
xor $55945, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x6447, %rsi
lea addresses_PSE+0x992f, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $53, %rcx
rep movsw
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0x10817, %r11
nop
nop
sub $55287, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
add %rbx, %rbx

// Load
lea addresses_RW+0xb817, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
mfence
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rcx
nop
and $13370, %r11

// Store
lea addresses_PSE+0x459f, %rsi
clflush (%rsi)
nop
nop
add $49609, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_A+0x4fb7, %r10
nop
nop
nop
nop
and $43029, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
and $26405, %rsi

// Faulty Load
lea addresses_RW+0x15417, %rsi
nop
nop
nop
nop
add %rbx, %rbx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
