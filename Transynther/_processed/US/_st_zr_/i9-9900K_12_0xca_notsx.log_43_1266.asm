.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf6e, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%r8), %rcx
nop
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x28ee, %rsi
lea addresses_D_ht+0x122e, %rdi
nop
sub $16200, %r9
mov $70, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x19e3c, %rsi
lea addresses_WT_ht+0x191aa, %rdi
nop
nop
and $55470, %r13
mov $2, %rcx
rep movsw
nop
nop
nop
add $45012, %rcx
lea addresses_WT_ht+0x356e, %r8
cmp $2978, %rdi
mov (%r8), %r13
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x1016e, %rax
nop
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
add $233, %rdi

// Store
lea addresses_A+0x56e, %r9
and %rcx, %rcx
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_PSE+0x526e, %r9
sub $47924, %r8
mov (%r9), %edi
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0xb86e, %rbx
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
inc %rbx

// Load
lea addresses_normal+0xf57e, %rbx
sub $53547, %rcx
mov (%rbx), %rax
nop
nop
nop
inc %r8

// Store
lea addresses_WT+0x19f6e, %r9
nop
nop
nop
nop
cmp $31645, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
add $30548, %rdi

// REPMOV
lea addresses_WT+0xca36, %rsi
lea addresses_D+0xa2ee, %rdi
nop
add %r8, %r8
mov $64, %rcx
rep movsb
nop
add $21367, %rdi

// Faulty Load
lea addresses_US+0x3f6e, %rax
nop
and $59343, %r8
mov (%rax), %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'00': 22, '58': 21}
00 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 00 58 00 58 00 58 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58 00 58
*/
